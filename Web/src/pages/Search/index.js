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
import ReactMapGL from 'react-map-gl';
import {connect} from 'react-redux';
import toggle from '../../redux/reducers'
import { throwStatement } from '@babel/types';

const GridBox = styled(Box)({
    display: 'grid',
    gridGap: ' 50px 10px',
    // grid-template-columns: auto auto auto;
    gridTemplateColumns: 'auto auto auto auto auto',
    width: '90%',
    justifyItems: 'center',
    justifySelf: 'center',
    paddingBottom: '100px',
})

const Container = styled(Flex)({
    height: '90vh',
})

const List = styled(Flex)({
    // overflowX: 'auto',
    height: '100%',
    overflowY: 'auto'
})

const Map = styled(Box)({
    height: '100%',
})


class Search extends Component {
    constructor(props) {
        super(props)
        this.state = {
            toggle: true,
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
      }


    randomImage = () => {
        return "https://source.unsplash.com/random?sig="+ Math.floor(Math.random() * Math.floor(1000)) +"/720x1280";
    };

    mapToggled = (e) => {
        // console.log('toggle: ', e.target.checked);
        console.log('toggle: ', this.state.toggle );
        // console.log('PROPS: ', this.props
        // !this.state.toggle
        // this.props.dispatch(toggle(e.target.checked));

        this.setState({toggle: !this.state.toggle});
    }

    shouldComponentUpdate() {
        return true;
    }

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
                        {[...Array(20)].map((x, i) =>
                            <PropertyCard image={this.randomImage()} />
                        )}
                    </GridBox>
                </Box>)
                : (<Container>
                <List width={1/2} pl={5} pr={2} flexDirection="column">
                    {[...Array(20)].map((x, i) =>
                        <ListCard image={this.randomImage()} />
                    )}
                </List>
                <Map width={1/2}>
                    <ReactMapGL width="100%" height="100%" 
                        // mapStyle="mapbox://styles/bb-developer/cjxmnrpin1zif1cmiet1pk2zg"
                        mapboxApiAccessToken = "pk.eyJ1IjoiYmItZGV2ZWxvcGVyIiwiYSI6ImNqdWRld252MTBoNng0NHJ5eTV1dzBuemgifQ.f8j9fIzonqYRMHG44o1OlQ"
                        {...this.state.viewport}
                        onViewportChange={(viewport) => this.setState({viewport})}
                    />
                </Map>
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
