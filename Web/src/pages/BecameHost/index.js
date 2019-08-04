import React, { Component } from 'react'
import PropTypes from 'prop-types'
import {Link, Redirect} from 'react-router-dom'
import { Box, Card, Button, Image, Heading, Text, Flex } from 'rebass';
import styled, {keyframes} from 'styled-components'
import Header from '../../components/Header';
import Footer from '../../components/Footer';
import Dropdown from 'react-dropdown';
import connect from "react-redux/es/connect/connect";
import CountUp from 'react-countup';

const anime = keyframes`
  0% {
    background-position: 0% 50%;
    /* transform: rotate(0deg); */
  }

  50% {
    background-position: 100% 50%;
    /* transform: rotate(0deg); */
  }

  100% {
    background-position: 0% 50%;
  }
`;

const Container = styled.div`
    padding-top: 90px;
    height: 100vh;
    width: 100vw;
    background-image: url("https://images.unsplash.com/photo-1448932284983-0c7b152eba33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80");
    /* url("https://images.unsplash.com/photo-1521791055366-0d553872125f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"); */
    background-size: cover;                      /* <------ */
    background-repeat:   no-repeat;
    background-position: center 90px;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    justify-content: center;
`
// styled(Box)({
//     height: "100vh",
//     width: "100vW",
//     overflow: "hidden",
// })


const BgImage = styled(Image)({
    // position: "absolute",
    width: "100%",
    height: "100%",
})

const SearchButton = styled.button`
    width: 100%;
    height: 60px;
    border-radius: 8px;
    border: none;
    /* background: linear-gradient(to right, #FF6565 0%, #FF6565 100%);; */
    background: linear-gradient(-45deg, #FFA63D, #FF3D77, #338AFF, #3CF0C5);
    background-size: 600%;
    animation: ${anime} 16s linear infinite;
    color: white;
    font-size: 25px;
    font-weight: 500;
    transition: 1s cubic-bezier(0.2, 0.8, 0.2, 1);
    outline: none;
    cursor: pointer;

    &:hover {
        
    }
`

const HostCard = styled(Card)({
    width: "500px",
    height:"430px",
    backgroundColor: "#ffffff",
    borderRadius: "10px",
    marginLeft:"150px"
})

const ColorText = styled.span`
    font-weight: 800;
    align-self: flex-end;
    background: linear-gradient(104deg, #60B3DB 20%, #FF6565 50%,  #FFD000 100%);
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    text-align: right;
`

const PriceText = styled.span`
    align-self: flex-end;
    background: linear-gradient(104deg, #60B3DB 20%, #60B3DB 50%,  #60B3DB 100%);
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    text-align: right;
`

const Input = styled.input`
    margin-top: 20px;
    margin-bottom: 20px;
    width: 100%;
    height: 50px;
    border:none;
    border-radius: 3px;
    background-color : rgba( 0, 0, 0, 0.05);
    padding-left: 0.5em;
    font-size: 18px;
    outline: none;

    &::-webkit-input-placeholder {
        color: rgb(163, 163, 163);;
        font-size: 18px;
    }
`

class BecameHost extends Component {
    constructor(props){
        super(props);
        this.state = {
            city: "Sydney",
            guest: "1",
            price: 1300,
        }
    }
    
    handleChange = (key, e) => {
        this.setState({
            [key]: e.value
        })

        const cityList = [
            "Sydney",
            "Newcastle",
            "Wollongong",
            "CentralCoast",
            "Albury",
            "Armidale",
            "Bathurst",
            "BrokenHill",
            "CityofLakeMacquarie",
            "CoffsHarbour‎",
            "Dubbo",
            "Goulburn",
            "Grafton",
            "Griffith",
            "Lithgow",
            "Maitland",
            "Parramatta",
            "Penrith",
            "BotanyBay",
            "Queanbeyan",
            "CityofShoalhaven‎",
            "Tamworth",
            "Taree",
            "TweedHeads",
            "WaggaWagga"
            ]

        const cityPrice = [
            1300,
            1000,
            1200,
            1000,
            800,
            800,
            750,
            720,
            850,
            900,
            600,
            900,
            600,
            700,
            890,
            900,
            1000,
            1100,
            1300,
            900,
            1000,
            650,
            600,
            500,
            600
        ]

        let cityName = this.state.city
        if (key == 'city') {
            cityName = e.value
        }

        let guestCount = this.state.guest
        if (key == 'guest') {
            guestCount = e.value
        }

        const index = cityList.findIndex(e => e == cityName);
        console.log('index', index)
        console.log('city_price', cityPrice[index])
        console.log('guest', this.state.guest)
        let price = cityPrice[index] * guestCount
        this.setState({
            price: price
        })
    }

    render() {
        const guest = ["1","2","3","4"]
        const cityList = [
            "Sydney",
            "Newcastle",
            "Wollongong",
            "CentralCoast",
            "Albury",
            "Armidale",
            "Bathurst",
            "BrokenHill",
            "CityofLakeMacquarie",
            "CoffsHarbour‎",
            "Dubbo",
            "Goulburn",
            "Grafton",
            "Griffith",
            "Lithgow",
            "Maitland",
            "Parramatta",
            "Penrith",
            "BotanyBay",
            "Queanbeyan",
            "CityofShoalhaven‎",
            "Tamworth",
            "Taree",
            "TweedHeads",
            "WaggaWagga"
            ]

        return (
            <div>
                {!this.props.user.isAuth ? <Redirect to={'/login'}></Redirect> : null}
                <Header />
                <Container>
                    <HostCard boxShadow='0 0 16px rgba(0, 0, 0, .25)' p="30px">
                        <Text fontSize="35px" fontWeight="650" color="#444444" > Become A <ColorText>Host</ColorText> </Text>
                        <Text pt="10px" pb="10px" fontSize="20px" fontWeight="400" color="#444444" > Find out your future income </Text>
                        {/* <Input type="text" name="location" placeholder="Where"></Input> */}
                        <Dropdown className="dropdownWrapper-detail" 
                                    controlClassName='dropdown'
                                    arrowClassName='dropdownArrow'
                                    menuClassName='dropdownMenu'
                                    options={cityList}
                                    placeholder="Where is your place?"
                                    value={this.state.city}
                                    onChange={v=>this.handleChange('city',v)}
                        />
                        <Text pt="20px" pb="10px" fontSize="20px" fontWeight="400" color="#444444" > Guest Capacity </Text>
                        <Dropdown className="dropdownWrapper-detail" 
                                    controlClassName='dropdown'
                                    arrowClassName='dropdownArrow'
                                    menuClassName='dropdownMenu'
                                    options={guest}
                                    placeholder="Guests"
                                    value={this.state.guest}
                                    onChange={v=>this.handleChange('guest',v)}
                        />
                        <Text pt="10px" pb="20px" fontSize="35px" fontWeight="600" color="#444444"> 
                        <PriceText>
                            <CountUp prefix="$ " end={this.state.price} />    
                        </PriceText>per month</Text>
                        <Link to="/hostForm">
                            <SearchButton > Get start </SearchButton>
                        </Link>
                    </HostCard>
                </Container>
                <Footer />
            </div>
        )
    }
}

const mapStateToProps = state => ({
    user: state.user
});


export default connect(mapStateToProps, null)(BecameHost);
