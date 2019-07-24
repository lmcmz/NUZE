import React, { Component } from 'react';
import './Home.css';
import { Box, Button, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import HeroMask from '../../components/HeroMask';
import SearchCard from '../../components/SearchCard';
import Recommand from '../../components/Recommand';
import PropertyList from '../../components/PropertyList';
import Footer from '../../components/Footer';
import Header from '../../components/Header';
import axios from 'axios'
import InfiniteScroll from 'react-infinite-scroller';

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
            houseList: [],
            limit: 16,
            offset: 0,
        }
    }

    componentDidMount() {
        console.log("mount")
        this.getHouseInfo()
    }

    getHouseInfo() {
        //TODO get user info
        const offset = this.state.offset + this.state.limit
        const limit = this.state.limit
        axios.get(`http://13.238.201.29/comp9900/house?limit=${limit}&offset=${offset}`)
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    
                    let propertyList = this.state.houseList.concat(res.data.data)
                    this.setState({
                        houseList: propertyList,
                        limit: limit,
                        offset: offset
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

                        <InfiniteScroll
                                pageStart={0}
                                loadMore={this.getHouseInfo.bind(this)}
                                hasMore={true || false}
                                loader={<div className="loader" key={0}>Loading ...</div>}
                            >
                                <PropertyList data={this.state.houseList} />
                            </InfiniteScroll>
                        <Footer />

                        {/* <Button onClick={this.getHouseInfo.bind(this)}> AAAAA </Button> */}
                    </Flex>
                </Flex>
            </div>
        );
    }
}

export default Home;
