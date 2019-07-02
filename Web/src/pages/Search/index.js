import React, { Component } from 'react'
import PropTypes from 'prop-types'
import './Search.css';
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import SearchHeader from '../../components/SearchHeader'
import queryString from 'query-string'
import FilterBar from '../../components/FilterBar'
import PropertyCard from '../../components/PropertyList/PropertyCard'
import Footer from '../../components/Footer';

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

class Search extends Component {
    static propTypes = {
        prop: PropTypes
    }

    componentDidMount() {
        const values = queryString.parse(this.props.location.search)
        console.log(values.query) 
      }


    randomImage = () => {
        return "https://source.unsplash.com/random?sig="+ Math.floor(Math.random() * Math.floor(1000)) +"/720x1280";
    };

    render() {
        return (
            <div>
                <SearchHeader />
                <FilterBar />
                <Box>
                    <Text pl={50} py={20} textAlign='left' fontSize='25px' fontWeight='500' color='#555555'> 
                        300+ Results
                    </Text>
                    <GridBox w={1} m='0 auto'>
                        {[...Array(20)].map((x, i) =>
                            <PropertyCard image={this.randomImage()} />
                        )}
                    </GridBox>
                </Box>

                <Text>AABBB</Text>
                <Footer />
            </div>
        )
    }
}

export default Search;
