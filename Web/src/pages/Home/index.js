import React, { Component } from 'react';
import './Home.css';
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import HeroMask from '../../components/HeroMask';
import SearchCard from '../../components/SearchCard';
import Recommand from '../../components/Recommand';
import PropertyList from '../../components/PropertyList';
import Footer from '../../components/Footer';
import Header from '../../components/Header';
import axios from 'axios'

const LeftBox = styled(Box)({
    display: 'flex',
    height: '100vh',
    width: '50%',
    alignItems: 'center',
    justifyContent: 'center'
})

class Home extends Component {
    constructor(props) {
        super(props);
        this.state = {
            houseList: []
        }
    }

    componentDidMount() {
        console.log("mount")
        this.getHouseInfo(16,0)
    }

    getHouseInfo(limit, offset) {
        //TODO get user info
        axios.get(`http://13.238.201.29/comp9900/house?limit=${limit}&offset=${offset}`)
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    // console.log('login')
                    console.log(res.data)
                    // this.setState({
                    //     houseList:res.data
                    // })
                    console.log(this)
                    this.setState({
                        houseList:res.data.data
                    })
                } else {
                    console.log('error')
                }
            })
    }

    handleChange(key, e) {
        this.setState({
            [key]: e.target.value
        })
    }

    render() {
        return (
            <div>
                <Header />
                <Flex flexDirection='column' className="App">
                    <Flex className="Section">
                        <LeftBox>
                            <SearchCard />
                        </LeftBox>
                        <Box width={1/2}>
                            <Flex>
                                <video autoPlay loop playsInline muted>
                                    <source src={require('../../resource/video/trip.mp4')} type="video/mp4" />
                                </video>
                                <HeroMask />
                            </Flex>
                        </Box>
                    </Flex>

                    <Flex className="Section2" flexDirection='column'>
                        <Recommand />
                        <PropertyList data={this.state.houseList} />

                        <Footer />
                    </Flex>
                </Flex>
            </div>
        );
    }
}

export default Home;
