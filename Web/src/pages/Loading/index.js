import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Button, Image, Heading, Text, Flex } from 'rebass';
import styled, {keyframes} from 'styled-components'

const anime = keyframes`
  0% {
    transform: rotate(0deg)
  }
  25% {
    transform: rotate(90deg)
  }
  75% {
    transform: rotate(270deg)
  }
  100% {
    transform: rotate(360deg)
  }
`;

const BackgroundBox = styled(Card)({
    height:"80px",
    width:"80px",
    margin: "0 auto",
    borderRadius: "10px",
    // padding: "20px",
    // alignItems:"center",
    justifyContent: "center",
    alignItems: 'center'
})

const LogoBox = styled.div`
    text-align: center;
    padding-top: 15px;
`

const LogoImage = styled.img`
    overflow: hidden;
    width: 50px;
    animation: ${anime} 4s linear infinite;
`

export default class LoadingAlert extends Component {
    static propTypes = {
        prop: PropTypes
    }

    render() {
        return (
            <BackgroundBox bg="#fff" boxShadow='0 0 16px rgba(96, 179, 219, .5)'>
                <LogoBox m="0 auto" justifyContent="center">
                    <LogoImage src={require('../../resource/image/logo-only.svg')}/>
                </LogoBox> 
            </BackgroundBox>
        )
    }
}
