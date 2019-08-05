import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Button, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import Footer from '../../components/Footer';
import Header from '../../components/Header';
import axios from 'axios'
import InfiniteScroll from 'react-infinite-scroller';
import PropertyList from '../../components/PropertyList';
import cityData from "../../resource/json/city.json";
import BlurHeader from '../../components/BlurHeader';

const Container = styled.div`
    /* padding-top: 90px;*/
    min-height: 100vh; 
    width: 100vw;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-content: center;
`

export default class CollectionPage extends Component {

    constructor(props) {
        super(props);
        this.state = {
            houseList: [],
            cityInfo: {},
            limit: 20,
            offset: 0,
        }
    }

    componentDidMount() {
        this.getHouseInfo()
        this.getCityInfo()
        window.scrollTo(0, 0)
    }

    getCityInfo() {
        cityData.map(x => {
            if (x.location == this.props.match.params.city)
            this.setState({cityInfo: x})
        })
    }

    getHouseInfo() {
        //TODO get user info
        const { city } = this.props.match.params
        console.log("-----------")
        console.log(city)
        const offset = this.state.offset + this.state.limit
        const limit = this.state.limit
        axios.get(`http://13.211.203.224/comp9900/house?city=${city}`)
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                                        
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

    render() {
        return (
            <div>
                <Header />
                <Container>

                <Flex>
                    <BlurHeader data={this.state.cityInfo}/>
                </Flex>

                <InfiniteScroll
                    pageStart={0}
                    loadMore={this.getHouseInfo.bind(this)}
                    hasMore={this.state.offset < this.state.cityInfo.count}
                    loader={<div className="loader" key={0}>Loading ...</div>}
                >
                    <PropertyList title="" data={this.state.houseList} />
                </InfiniteScroll>
                </Container>
                <Footer />
            </div>
        )
    }
}
