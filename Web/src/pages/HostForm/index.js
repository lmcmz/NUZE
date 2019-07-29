import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Button, Image, Heading, Text, Flex } from 'rebass';
import styled, {keyframes} from 'styled-components'
import Header from '../../components/Header';
import Footer from '../../components/Footer';
import Dropdown from 'react-dropdown';

const Container = styled(Box)({
    width: "75%",
    minHeight: "100vh",
    overflow: "hidden",
    margin:"0 auto",
})

export default class HostForm extends Component {
    static propTypes = {
        prop: PropTypes
    }

    render() {
        const houseType = ["Entire Place", "individual Room"]
        return (
            <div>
                <Header />
                <Container pt="90px">
                    <Text  py={20} textAlign='left' fontSize='30px' fontWeight='600' color='#555555'> 
                        What kind of place are you listing?
                    </Text>
                    
                    <Box py={30}>
                        <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> House Type </Text>
                        <Dropdown className="dropdownWrapper" 
                                    controlClassName='dropdown'
                                    arrowClassName='dropdownArrow'
                                    menuClassName='dropdownMenu'
                                    options={houseType}
                                    placeholder="House Type"
                        />
                    </Box>

                    <Box py={30}>
                        <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> How many guest can your place accommodate? </Text>
                        <Dropdown className="dropdownWrapper" 
                                    controlClassName='dropdown'
                                    arrowClassName='dropdownArrow'
                                    menuClassName='dropdownMenu'
                                    options={houseType}
                                    placeholder="House Type"
                        />
                    </Box>

                    <Box py={30}>
                        <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> How many bathrooms? </Text>
                        <Dropdown className="dropdownWrapper" 
                                    controlClassName='dropdown'
                                    arrowClassName='dropdownArrow'
                                    menuClassName='dropdownMenu'
                                    options={houseType}
                                    placeholder="House Type"
                        />
                    </Box>

                    <Box py={30}>
                        <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> Where is you place ? </Text>
                        <Dropdown className="dropdownWrapper" 
                                    controlClassName='dropdown'
                                    arrowClassName='dropdownArrow'
                                    menuClassName='dropdownMenu'
                                    options={houseType}
                                    placeholder="House Type"
                        />
                    </Box>

                    <Box py={30}>
                        <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> What amenities do you offer? </Text>
                        <Dropdown className="dropdownWrapper" 
                                    controlClassName='dropdown'
                                    arrowClassName='dropdownArrow'
                                    menuClassName='dropdownMenu'
                                    options={houseType}
                                    placeholder="House Type"
                        />
                    </Box>

                </Container>
                <Footer />
            </div>
        )
    }
}
