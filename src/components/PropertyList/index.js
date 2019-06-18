import React, { Component } from 'react'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import PropTypes from 'prop-types'
import PropertyCard from './PropertyCard'

const GridBox = styled(Box)({
    display: 'grid',
    gridGap: ' 50px 10px',
    // grid-template-columns: auto auto auto;
    gridTemplateColumns: 'auto auto auto auto',
    width: '80%',
    justifyItems: 'center',
    justifySelf: 'center',
    paddingBottom: '100px',
})

export default class PropertyList extends Component {
  
    randomImage = () => {
        return "https://source.unsplash.com/random?sig="+ Math.floor(Math.random() * Math.floor(1000)) +"/720x1280";
    };

    render() {
        return (
            <Box>
                <Text pl={160} py={20} textAlign='left' fontSize='30px' fontWeight='500' color='#555555'> 
                    Popular place to stay
                </Text>
                <GridBox w={4/5} m='0 auto'>
                    {[...Array(20)].map((x, i) =>
                        <PropertyCard image={this.randomImage()} />
                    )}
                </GridBox>
            </Box>
        )
    }
}
