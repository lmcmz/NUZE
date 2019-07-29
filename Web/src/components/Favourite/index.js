import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Button, Card, Image, Heading, Text, Flex } from 'rebass';
import PropertyList from '../../components/PropertyList';

export default class FavouriteList extends Component {
    static propTypes = {
        prop: PropTypes
    }

    render() {
        return (
            <div>
                <Text pl={160} py={20} textAlign='left' fontSize='30px' fontWeight='600' color='#555555'> 
                    Favourite List
                </Text>
                    <PropertyList data={this.props.data}></PropertyList>
            </div>
        )
    }
}