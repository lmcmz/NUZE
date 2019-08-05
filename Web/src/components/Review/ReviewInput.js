import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Button, Card, Image, Heading, Text, Flex } from 'rebass';
import styled, { keyframes } from 'styled-components';
import { faStar, faStarHalfAlt } from "@fortawesome/free-solid-svg-icons";
import { faStar as emStar } from "@fortawesome/free-regular-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import axios from "axios";
import {userLogin} from "../../redux/user/actions";
import connect from "react-redux/es/connect/connect";
import {Link, withRouter, Redirect} from 'react-router-dom'
import Simplert from 'react-simplert'

const PropertyImage = styled(Image)({
    height: '80px',
    width: '120px',
    paddingLeft: "10px",
    borderRadius: "8px",
    overflow: "hidden",
    paddingRight: "20px",
})

const DescInput = styled.textarea`
    width: 100%;
    height: 150px;
    border:none;
    border-radius: 8px;
    background-color : rgba( 0, 0, 0, 0.05);
    padding-top: 10px;
    font-size: 18px;
    outline: none;
    margin-top: 8px;
    /* margin-left: 9px; */

    &::-webkit-input-placeholder {
        color: rgb(163, 163, 163);;
        font-size: 18px;
    }
`

class ReviewInputCard extends Component {
    constructor(props){
        super(props);
        this.state = {
            review:'',
            redirect: false,
            showAlert: false
        };
    }

    submit(){
        console.log('submit')
        console.log(this.state.review)
        console.log(this.props.data)
        let review = this.state.review
        let houseId = this.props.data.houseId
        let id = this.props.data.id
        let jwt = this.props.user.jwt
        axios.post(`http://13.211.203.224/comp9900/house/${houseId}/review`, {id, review}, { headers: { 'Authorization': jwt, 'Content-Type':'application/json'}})
            .then(res=>{
                console.log(res.data)
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    console.log(res.data)
                    // return res.data
                    this.setState({
                        showAlert: true,
                    })
                } else {
                    // dispatch(errorMsg(res.data.error))
                }
            })
    }

    handleChange(key, e) {
        this.setState({
            [key]: e.target.value
        })
    }

    handleRedirect() {
        this.setState({ 
            redirect: true
        })
    }

    render() {
        const items = [];
        Array(5).fill().map((_, ) => 
            items.push(
                <FontAwesomeIcon color="#FFD000" icon={emStar} size='1x'/>
            )
        )

        return (
            <div>
                {this.state.redirect? <Redirect to={`/house/${this.props.data.houseId}`}/> : null}
            <Simplert 
                showSimplert={ this.state.showAlert }
                type="success"
                title="Review Success"
                message="Your review have been submit successfully"
                onClose={this.handleRedirect.bind(this)}
            />

            <Card width={0.8} py={20} my={20} borderRadius="10px" m="0 auto" border="1px solid #eee">
                <Flex>
                    <Flex>
                        <PropertyImage src={this.props.data.picUrl} />
                    </Flex>
                    <Flex flexDirection="column">
                        <Text>{this.props.data.brifeInfor}  {items}
                        </Text>
                        <DescInput placeholder="Write your review" onChange={(v) => this.handleChange('review', v)}/>
                        <Button mt={30} width="150px" bg="#60B3DB" onClick={() => this.submit()}>Submit</Button>
                    </Flex>
                </Flex>
                
            </Card>
            </div>
        )
    }
}
const mapStateToProps = (state)=>({
    user:state.user
})
export default connect(mapStateToProps, null)(ReviewInputCard)