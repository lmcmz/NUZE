import React, { Component } from 'react'
import PropTypes from 'prop-types'
import {Link, Redirect} from 'react-router-dom'
import { Box, Button, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import Header from '../../components/Header';
import axios from 'axios'
import TripList from '../../components/Trips';
import EditProfile from '../../components/EditProfile';
import FavouriteList from '../../components/Favourite';
import ReviewList from '../../components/ReviewList';
import Footer from '../../components/Footer';
import { returnStatement } from '@babel/types';
import {logout} from "../../redux/user/actions";
import connect from "react-redux/es/connect/connect";

const randomImage = () => {
    return "https://source.unsplash.com/random?sig="+ Math.floor(Math.random() * Math.floor(1000)) +"/720x1280";
};

const Container = styled(Flex)({
    minHeight:"100vh",
    width: "100vW"
})

const MenuItem = styled(Box)({
    background:"none",
    backgroundColor:"none",
    // color: "#444444",
    fontSize: "20px",
    fontFamily: "roboto",
    fontWeight: "550",
    outline: "none",
    cursor: "pointer",
    paddingTop: "10px",
    paddingBottom: "10px",
    paddingRight:"30px",
})

class Profile extends Component {
    constructor(props) {
        super(props);
        this.state = {
            houseList: [],
            selectedId: 1,
            limit: 16,
            offset: 0,
            menuList:[
                {id: 1, text: "Trip", isSelected: true},
                {id: 2, text: "Edit Profile", isSelected: false},
                {id: 3, text: "Review", isSelected: false},
                {id: 4, text: "Logout", isSelected: false},
            ]
        }
    }


    componentDidMount() {
        this.getHouseInfo()
    }
    
    getHouseInfo() {
        //TODO get user info
        const offset = this.state.offset + this.state.limit
        const limit = this.state.limit
        axios.get(`http://13.211.203.224/comp9900/house?limit=${limit}&offset=${offset}`)
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    
                    let propertyList = this.state.houseList.concat(res.data.data)
                    this.setState({
                        houseList: propertyList,
                        limit: limit,
                        offset: offset,
                        // selectedId: "",
                    })
                    // this.renderSwitch(this.state.selectedId)
                } else {
                    console.log('error')
                }
            })
    }

    handleMenu = e => {
        const id = e.target.id
        console.log(id)

        if (id == 4) {
            this.props.logout()
            console.log("------log out----")
            return
        }

        let menu = this.state.menuList
        menu.map(x => {
            x.isSelected = x.id == id
        })
        this.setState({
            menuList: menu,
            selectedId: id
        })
    }

    renderSwitch(id) {
        let idStr = id.toString()
        switch(idStr) {
          case "1":
            return <TripList data={this.state.houseList}/>; 
          case "2":
            return <EditProfile />;
          case "3":
            return <ReviewList data={this.state.houseList}/>;
          case "4":
            return "Logout";
        }
      }
      

    render() {
        return (
            <div>
                {!this.props.user.isAuth ? <Redirect to={'/'}></Redirect> : null}
                <Header />
                <Container pt="90px">
                    <Box width={0.2} pt="80px" style={{textAlign:"end"}}>
                        {this.state.menuList.map(x => {
                            if (x.id === 4) {
                                return <MenuItem id={x.id} onClick={this.handleMenu} color="#FF6565">{x.text}</MenuItem>    
                            } else {
                                return <MenuItem id={x.id} onClick={this.handleMenu} color={x.isSelected ? "#60B3DB" : "#444444"}>{x.text}</MenuItem>
                            }
                        })}
                    </Box>
                    <Box width={0.8}>
                        {this.renderSwitch(this.state.selectedId)}
                    </Box>
                </Container>
                <Footer />
            </div>
        )
    }
}

const mapStateToProps = (state)=>({
    user:state.user
})
const actionCreators = { logout };
export default connect(mapStateToProps, actionCreators)(Profile)