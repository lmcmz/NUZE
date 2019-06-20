import React, { Component } from 'react'
import { Box, Flex, Card, Image, Heading, Text} from 'rebass';
import styled from 'styled-components'
import './Footer.css'
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faGithub } from '@fortawesome/free-brands-svg-icons'
import { faAt } from "@fortawesome/free-solid-svg-icons";
// import { faStar as emStar } from "@fortawesome/free-regular-svg-icons";

const ColorText = styled.span`
    /* align-self: flex-end; */
    /* background: linear-gradient(104deg, #60B3DB 20%, #FF6565 50%,  #FFD000 100%); */
    color: #60B3DB;
    /* -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    text-align: right; */
    font-weight: 700;
`


export default class Footer extends Component {
    render() {
        return (
            <Flex className='Footer' pt='20px' flexDirection='column' justifyContent='center'>
                <Flex width={2/3} alignSelf='center'>
                    <Box width={1/2}>
                        <Flex flexDirection='column' mx='120px'>
                            <Image src={require('../../resource/image/logo-only.svg')} width='40px'/>
                            {/* <Text fontSize='20px' fontWeight='600' textAlign='left'>Contratc us</Text> */}
                            <Flex py='20px'>
                                <Text fontSize='15px' fontFamily='' textAlign='left'> NUZE is not for profit. All property is sourced from the Internet. 
                                    It aims to practice our team programming skill. 
                                    If the content of this site has an impact on your rights, 
                                    please send an email to <a href="">info@nuze.xyz </a> 
                                     and we will delete the copyrighted content as soon as possible.</Text>
                            </Flex>
                        </Flex>
                    </Box>
                    <Box width={1/2}>
                        <Flex flexDirection='column' mx='120px'>
                            <Text fontSize='20px' fontWeight='600' textAlign='left'>Contratc us</Text>
                            <Flex py='20px'>
                                <Box>
                                    <a href="http://wwww.github.com"><FontAwesomeIcon icon={faGithub} color="black" size="4x"/></a>
                                </Box>
                                <Box pl='10px'>
                                    <a href="http://wwww.github.com"><FontAwesomeIcon icon={faAt} color="black" size="4x"/></a>
                                </Box>
                            </Flex>
                        </Flex>
                    </Box>
                </Flex>
                <Box py='10px'>
                <Text fontSize='12px'>Copyright © 2019 <ColorText>DoNotReply</ColorText>All rights reserved</Text>
                </Box>
            </Flex>
        )
    }
}
