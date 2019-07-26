import React, { Component } from 'react'
import PropTypes from 'prop-types'
import './Search.css';
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import SearchHeader from '../../components/SearchHeader'
import queryString from 'query-string'
import FilterBar from '../../components/FilterBar'
import PropertyCard from '../../components/PropertyList/PropertyCard'
import ListCard from '../../components/ListCard'
import Footer from '../../components/Footer';
// import ReactMapGL from 'react-map-gl';
import {connect} from 'react-redux';
import toggle from '../../redux/reducers'
import { throwStatement } from '@babel/types';
import axios from 'axios'

import ReactMapboxGl, { Marker, Layer, Feature } from 'react-mapbox-gl';

const GridBox = styled(Box)({
    display: 'grid',
    gridGap: ' 50px 10px',
    // grid-template-columns: auto auto auto;
    gridTemplateColumns: '1fr 1fr 1fr 1fr 1fr',
    width: '90%',
    justifyItems: 'center',
    justifySelf: 'center',
    paddingBottom: '100px',
})

const Container = styled(Flex)({
    height: '90vh',
    width: '100vW',
})

const List = styled(Flex)({
    // overflowX: 'auto',
    height: '100%',
    overflowY: 'auto'
})

const MapWrapper = styled(Box)({
    height: '100%',
})

const Map = ReactMapboxGl({
    accessToken:
      'pk.eyJ1IjoiYmItZGV2ZWxvcGVyIiwiYSI6ImNqdWRld252MTBoNng0NHJ5eTV1dzBuemgifQ.f8j9fIzonqYRMHG44o1OlQ'
  });



class Search extends Component {
    constructor(props) {
        super(props)
        this.state = {
            toggle: false,
            houseList:[],
            limit: 20,
            offset: 0,
            viewport: {
                // width: 800,
                // height: 400,
                bearing: 0,
                pitch: 0,
                latitude: 37.7577,
                longitude: -122.4376,
                zoom: 12
              }
        }
    }

    componentDidMount() {
        const values = queryString.parse(this.props.location.search)
        console.log(values.query)

        const offset = this.state.offset + this.state.limit
        const limit = this.state.limit
        axios.get(`http://13.211.203.224/comp9900/house?city=Sydney&limit=${limit}&offset=${offset}`)
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


    randomImage = () => {
        return "https://source.unsplash.com/random?sig="+ Math.floor(Math.random() * Math.floor(1000)) +"/720x1280";
    };

    mapToggled = (e) => {
        console.log('toggle: ', this.state.toggle );
        this.setState({toggle: !this.state.toggle});
    }

    // shouldComponentUpdate() {
    //     return true;
    // }

    render() {
        // console.log('PROPS: ', this.props);
        return (
            <div>
            <SearchHeader />
            <FilterBar mapCheck={e => this.mapToggled(e)}/>
            {this.state.toggle ? (<Box>
                <Text pl={50} py={20} textAlign='left' fontSize='25px' fontWeight='500' color='#555555'> 
                    300+ Results
                </Text>
                <GridBox w={1} m='0 auto'>
                    {this.state.houseList.map((x, i) =>
                        <PropertyCard data={x} />
                    )}
                </GridBox>
            </Box>)
            : (<Container>
            <List width={1/2} pl={5} pr={2} flexDirection="column">
                {this.state.houseList.map((x, i) =>
                    <ListCard data={x} />
                )}
            </List>
                <MapWrapper width={1/2}>
                    <Map
                        style="mapbox://styles/mapbox/streets-v9"
                        containerStyle={{
                            height: '100%',
                            width: '100%'
                        }}
                        >
                        <Layer type="symbol" id="marker" layout={{ 'icon-image': 'marker-15' }}>
                            <Feature coordinates={[-33.86515, 151.1919]} />
                        </Layer>
                    </Map>;
                </MapWrapper>
            </Container>)} 
            <Footer />
        </div>
        )
    }
}
  
  const mapStateToProps = state => ({
    toggle: state.toggle
  });


export default connect(mapStateToProps, null)(Search);
