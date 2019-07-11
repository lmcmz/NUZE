import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'

const BackgroundBox = styled(Card)({
    height:"400px",
    width:"600px",
    margin: "0 auto",
    borderRadius: "10px",
    padding: "20px"
})

export default class LoginAlert extends Component {
    static propTypes = {
        prop: PropTypes
    }

    render() {
        return (
            <BackgroundBox bg="#fff" boxShadow='0 0 16px rgba(96, 179, 219, .5)'>
                <Text>TTTTTT</Text>
            </BackgroundBox>
        )
    }
}
