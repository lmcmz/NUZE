import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar, faStarHalfAlt } from "@fortawesome/free-solid-svg-icons";
import { faStar as emStar } from "@fortawesome/free-regular-svg-icons";

const Avatar = styled(Image)({
    width: '50px',
    height: '50px',
    objectFit: 'cover'
})

export default class ReviewCard extends Component {
    static propTypes = {
        prop: PropTypes
    }

    render() {
        return (
            <Card py="8px">
                <Flex pb="10px">
                    <Box>
                        <Avatar borderRadius="25px" src={this.props.avatar}></Avatar>
                    </Box>
                    <Box pl="15px">
                        <Flex>
                        <Text fontSize="25px" fontWeight="600" py="0px">{this.props.name}</Text>
                            <Flex pl="10px" alignItems="center">
                                        <Text color="#FFD000">
                                            <FontAwesomeIcon icon={faStar} size='lg'/>
                                            <FontAwesomeIcon icon={faStar} size='lg'/>
                                            <FontAwesomeIcon icon={faStar} size='lg'/>
                                            <FontAwesomeIcon icon={faStarHalfAlt} size='lg'/>
                                            <FontAwesomeIcon icon={emStar} size='lg'/>
                                        </Text>
                                        <Text alignSelf="center" pl="3px" fontSize="15px" color="#FFD000" fontWeight="500">4.5</Text>
                                </Flex> 
                        </Flex>
                        <Text fontSize="15px">{this.props.time}</Text>
                    </Box>
                </Flex>
                <Text fontSize="23px"> {this.props.comment} </Text>
                <Card my={3} border="1px solid #eee" width="90%"></Card>
            </Card>
        )
    }
}