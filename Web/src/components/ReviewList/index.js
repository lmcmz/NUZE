import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Button, Card, Image, Heading, Text, Flex } from 'rebass';
import PropertyList from '../../components/PropertyList';
import ReviewInputCard from '../Review/ReviewInput';

export default class ReviewList extends Component {
    static propTypes = {
        prop: PropTypes
    }

    render() {
        console.log(this.props.data)
        return (
            <div>
                <Text pl={160} py={20} textAlign='left' fontSize='30px' fontWeight='600' color='#555555'> 
                    Waiting For Review
                </Text>

                {[...Array(2)].map((x, i) =>
                    <ReviewInputCard data={this.props.data[0]} />
                )}


                <Text pl={160} py={20} textAlign='left' fontSize='30px' fontWeight='600' color='#555555'> 
                    History Reviews
                </Text>
                    <PropertyList data={this.props.data.slice(8, 12)}></PropertyList>

            </div>
        )
    }
}