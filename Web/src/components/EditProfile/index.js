import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Button, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'

const InfoCard = styled(Card)({
    width: "700px",
    overflow: "hidden",
})

const Title = styled(Text)({
    marginRight:"20px",
    fontSize:"17px",
    textAlign:"center",
    width: "100px;"
})

const Input = styled.input`
    width: 70%;
    height: 40px;
    border:none;
    border-radius: 3px;
    background-color : rgba( 0, 0, 0, 0.05);
    padding-left: 0.5em;
    font-size: 18px;
    outline: none;

    &::-webkit-input-placeholder {
        color: rgb(163, 163, 163);;
        font-size: 18px;
    }
`

const DescInput = styled.textarea`
    width: 70%;
    height: 150px;
    border:none;
    border-radius: 3px;
    background-color : rgba( 0, 0, 0, 0.05);
    padding-left: 0.5em;
    font-size: 18px;
    outline: none;
    /* margin-top: 8px; */

    &::-webkit-input-placeholder {
        color: rgb(163, 163, 163);;
        font-size: 18px;
    }
`



export default class EditProfile extends Component {
    static propTypes = {
        prop: PropTypes
    }

    render() {
        return (
            <Box>
                <Text pl={160} py={20} textAlign='left' fontSize='30px' fontWeight='600' color='#555555'> 
                    My Profile
                </Text>
                <Box width={4/5} pl="160px" overflow="scroll">
                    <InfoCard 
                        mb="50px" 
                        borderRadius="10px"
                        border="1px solid #e5e5e5"
                        boxShadow='0 0 16px rgba(0, 0, 0, .25)'>
                        <Flex bg="#60B3DB" py="20px" borderRadius="10px">
                            <Text pl="50px" fontSize="18px" color="white" fontWeight="600"> Required </Text>
                        </Flex>
                        <Flex py="15px" textAlign="center"  alignItems="center" justifyContent="center">
                            <Title fontSize="17px"> First Name </Title>
                            <Input type="text" name="firstName" placeholder="First Name"></Input>
                        </Flex>
                        <Flex py="15px" textAlign="center"  alignItems="center" justifyContent="center">
                            <Title fontSize="17px"> Last Name </Title>
                            <Input type="text" name="LastName" placeholder="Last Name"></Input>
                        </Flex>
                        <Flex py="15px" textAlign="center"  alignItems="center" justifyContent="center">
                            <Title fontSize="17px"> Email Address </Title>
                            <Input type="text" name="firstName" placeholder="Email"></Input>
                        </Flex>
                        <Flex py="15px" textAlign="center"  alignItems="center" justifyContent="center">
                            <Title fontSize="17px"> Where do you live </Title>
                            <Input type="text" name="firstName" placeholder="Addess"></Input>
                        </Flex>
                        <Flex py="15px" textAlign="center"  alignItems="flex-start" justifyContent="center">
                            <Title fontSize="17px"> Description </Title>
                            <DescInput type="text" name="firstName" placeholder="DescInput"></DescInput>
                        </Flex>
                    </InfoCard>
                    <InfoCard  
                        borderRadius="10px"
                        border="1px solid #e5e5e5"
                        boxShadow='0 0 16px rgba(0, 0, 0, .25)'>
                       <Flex bg="#FFD000" py="20px" borderRadius="10px">
                            <Text pl="50px" fontSize="18px" color="white" fontWeight="600"> Optional </Text>
                        </Flex>
                        <Flex py="10px" textAlign="center"  alignItems="center" justifyContent="center">
                            <Title fontSize="17px"> School </Title>
                            <Input type="text" name="firstName" placeholder="School"></Input>
                        </Flex>
                        <Flex py="10px" textAlign="center"  alignItems="center" justifyContent="center">
                            <Title fontSize="17px"> Work </Title>
                            <Input type="text" name="firstName" placeholder="Work"></Input>
                        </Flex>
                        <Flex py="10px" textAlign="center"  alignItems="center" justifyContent="center">
                            <Title fontSize="17px"> Work Email </Title>
                            <Input type="text" name="firstName" placeholder="Work Email"></Input>
                        </Flex>
                    </InfoCard>
                </Box>
            </Box>
        )
    }
}
