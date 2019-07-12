import React, { Component } from 'react'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar, faStarHalfAlt, faArrowRight, faArrowCircleRight } from "@fortawesome/free-solid-svg-icons";
import { faStar as emStar } from "@fortawesome/free-regular-svg-icons";
import {Link, withRouter} from 'react-router-dom'

const PropertyImage = styled(Image)({
    width: '250px',
    height: '150px',
    objectFit: 'cover',
    borderRadius: '3px',
    backgroundColor: '#eee',
})

const Container = styled(Flex)({
    border: "1px solid #e5e5e5",
    borderRadius:"3px",
})

const PropertyLocationText = styled(Text)({
    textTransform: 'uppercase',
})

export default class ListCard extends Component {

    constructor(props) {
        super(props)
        this.state = {
        }
    }

    render() {
        return (
            <Container
            p={1}
            my={3}>

            <Box>
                <Link to="/room">
                    <PropertyImage borderRadius={3} src={this.props.image} />
                </Link>
            </Box>
            
            <Flex px={3} flexDirection="column">
                <Heading className='PropertyH3' as='h3' color='#000' textAlign='left'>
                    Card
                </Heading>
                <PropertyLocationText color='grey' fontSize='15px' fontWeight='800' textAlign='left'> Location </PropertyLocationText>
                <Text fontSize={0} color='#000' textAlign='left'>
                    Small meta text
                </Text>
                <Text mt="auto" fontSize={0} color='#FFD000' textAlign='left'>
                    <FontAwesomeIcon icon={faStar} size='s'/>
                    <FontAwesomeIcon icon={faStar} size='s'/>
                    <FontAwesomeIcon icon={faStar} size='s'/>
                    <FontAwesomeIcon icon={faStarHalfAlt} size='s'/>
                    <FontAwesomeIcon icon={emStar} size='s'/>
                </Text>
            </Flex>
            
            <Flex ml="auto" alignItems='center'>
                <Text fontSize="25px" fontWeight="500" pr="10px">$98</Text>
                {/* <FontAwesomeIcon icon={faArrowRight} size='2x'/> */}
            </Flex>
        </Container>
        )
    }
}
