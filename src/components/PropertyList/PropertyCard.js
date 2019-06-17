
import React, { Component } from 'react'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import PropTypes from 'prop-types'
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar, faStarHalfAlt } from "@fortawesome/free-solid-svg-icons";
import { faStar as emStar } from "@fortawesome/free-regular-svg-icons";
import './PropertyCard.css'


const Property = styled(Flex)({
    width: '100%',
    height: '300px',
    outline: 'none',
    borderRadius: '3px',
})

const PropertyImage = styled(Image)({
    width: '400px',
    height: '250px',
    objectFit: 'cover',
    borderRadius: '3px'
})


const PropertyLocationText = styled(Text)({
    textTransform: 'uppercase',
})

export default class PropertyCard extends Component {

    constructor(props) {
        super(props)
        this.state = {
          show: true
        }
    }

    render() {
        return (
            <Property>
                <Card
                    p={1}
                    borderRadius={2}
                    borderWidth={1}
                    borderColor='#444'>
                        
                    <Box>
                    <PropertyImage borderRadius={3} src={this.props.image} />
                    </Box>
                    
                    <Box py={2}>
                        <PropertyLocationText color='grey' fontSize='15px' fontWeight='800' textAlign='left'> Location </PropertyLocationText>
                    <Heading className='PropertyH3' as='h3' color='#000' textAlign='left'>
                        Card Small meta text Small meta text Small meta text Small meta text
                    </Heading>
                    <Text fontSize={0} color='#000' textAlign='left'>
                        Small meta text
                    </Text>
                    <Text fontSize={0} color='#FFD000' textAlign='left'>
                        <FontAwesomeIcon icon={faStar} size='s'/>
                        <FontAwesomeIcon icon={faStar} size='s'/>
                        <FontAwesomeIcon icon={faStar} size='s'/>
                        <FontAwesomeIcon icon={faStarHalfAlt} size='s'/>
                        <FontAwesomeIcon icon={emStar} size='s'/>
                    </Text>
                    </Box>
                </Card>
            </Property>
        )
    }
}
