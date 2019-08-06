import React, { Component } from 'react'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar, faStarHalfAlt, faArrowRight, faArrowCircleRight } from "@fortawesome/free-solid-svg-icons";
import { faStar as emStar } from "@fortawesome/free-regular-svg-icons";
import {Link, withRouter} from 'react-router-dom'

const PImage = styled.img`
    width: 230px !important;
    height: 150px;
    object-fit: cover;
    border-radius: 3px;
    background-color: #eee;
`

const Container = styled(Flex)({
    border: "1px solid #e5e5e5",
    borderRadius:"3px",
    position: 'relative',
    overflow: 'hidden',
    minHeight: '160px'
})

const PropertyLocationText = styled(Text)({
    textTransform: 'uppercase',
})

const ADBackground = styled.div`
    width: 50px;
    height: 50px;
    border-radius: 25px;
    display: block;
    position:absolute;
    right: -15px;
    top: -15px;
    background-color: #FF6565;
`

const ADText  = styled.text`
    position: absolute;
    right: 5px;
    top: 5px;
    color: white;
`

const ReviewCountText = styled.span`
    padding-left: 5px;
`

export default class ListCard extends Component {

    constructor(props) {
        super(props)
        this.state = {
        }
    }

    render() {
        const items = []

        let rate = this.props.data.starRating < 0 ? 0 : this.props.data.starRating
        let fullStar = Math.floor(rate)
        let halfStar = rate > fullStar ? 1 : 0
        let emptyStar = 5 - fullStar - halfStar
        // console.log(rate, fullStar, emptyStar)
        Array(fullStar).fill().map((_, ) => 
            items.push(<FontAwesomeIcon icon={faStar} size='s'/>)
        )

        Array(halfStar).fill().map((_, ) => 
            items.push(<FontAwesomeIcon icon={faStarHalfAlt} size='s'/>)
        )

        Array(emptyStar).fill().map((_, ) => 
            items.push(<FontAwesomeIcon icon={emStar} size='s'/>)
        )

        let locationLabel = this.props.data.neighborhood ? this.props.data.neighborhood : null;
        if (locationLabel) {
            locationLabel += ", "
            locationLabel += this.props.data.city
        } else {
            locationLabel = this.props.data.city
        }
        

        return (
            <Container
            p={1}
            my={3}>


            {
                this.props.data.isAD ? 
                <div>
                    <ADBackground /> 
                    <ADText>AD</ADText> 
                </div>
                : null
            }
 

            <Box>
                <Link to={`/house/${this.props.data.houseId}`}>
                    <PImage borderRadius={3} src={this.props.data.picUrl} />
                </Link>
            </Box>
            
            <Flex px={3} flexDirection="column">
                <Text className='PropertyH3' pt="5px" fontSize="20px" fontWeight="600" color='#000' textAlign='left'>
                    {this.props.data.brifeInfor}
                </Text>
                <PropertyLocationText py={1} color='grey' fontSize='15px' fontWeight='800' textAlign='left'> 
                    {locationLabel} 
                </PropertyLocationText>
                <Text fontSize={0} py={1} color='#000' textAlign='left'>
                    {this.props.data.spaceType}
                </Text>
                <Text mt="auto" fontSize={0} color='#FFD000' textAlign='left'>
                {items}
                <ReviewCountText>
                            {this.props.data.reviewsCount} reviews
                        </ReviewCountText>
                </Text>
            </Flex>
            
            <Flex ml="auto" alignItems='center'>
                <Text fontSize="25px" fontWeight="500" pr="10px">${this.props.data.price}</Text>
                {/* <FontAwesomeIcon icon={faArrowRight} size='2x'/> */}
            </Flex>
        </Container>
        )
    }
}
