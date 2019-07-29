import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Button, Image, Heading, Text, Flex } from 'rebass';
import styled, {keyframes} from 'styled-components'
import Header from '../../components/Header';
import Footer from '../../components/Footer';

const Container = styled(Box)({
    width: "75%",
    height: "100vh",
    overflow: "hidden",
    margin:"0 auto",
})

export default class HostForm extends Component {
    static propTypes = {
        prop: PropTypes
    }

    render() {
        return (
            <div>
                <Header />
                <Container pt="90px">
                    <Text  py={20} textAlign='left' fontSize='30px' fontWeight='600' color='#555555'> 
                        What kind of place are you listing?
                    </Text>
                    
                    <Box py={30}>
                        <Text fontSize='20px' fontWeight='600' color='#555555'> House Type </Text>
                    </Box>

                    <Box py={30}>
                        <Text fontSize='20px' fontWeight='600' color='#555555'> How many guest can your place accommodate? </Text>
                    </Box>

                    <Box py={30}>
                        <Text fontSize='20px' fontWeight='600' color='#555555'> How many bathrooms? </Text>
                    </Box>

                    <Box py={30}>
                        <Text fontSize='20px' fontWeight='600' color='#555555'> Where is you place ? </Text>
                    </Box>

                    <Box py={30}>
                        <Text fontSize='20px' fontWeight='600' color='#555555'> What amenities do you offer? </Text>
                    </Box>

                </Container>
                <Footer />
            </div>
        )
    }
}
