import React, { Component } from 'react'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import RecommandCard from './RecommandCard';
import './Recommand.css'

const ColorTextBlue = styled.span`
    align-self: flex-end;
    background: #60B3DB;
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    text-align: right;
    margin:0;
    font-weight:600;
`

const ColorTextRed = styled.span`
    align-self: flex-end;
    background: #FF6565;
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    text-align: right;
    margin:0;
    font-weight:600;
`

const ColorTextYellow = styled.span`
    align-self: flex-end;
    background: #FFD000;
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    text-align: right;
    margin:0;
    font-weight:600;
`

const RecommandScrollView = styled(Flex)({
    display: 'flex',
    overflowX: 'scroll',
    overflowY: 'hidden'
})

export class Recommand extends Component {


    randomImage() {
        return "https://source.unsplash.com/random?sig="+ Math.floor(Math.random() * Math.floor(100)) +"/720x1280"
    }

    render() {
        return (
            <Box>
                <Text pl={160} py={20} textAlign='left' fontSize='30px' fontWeight='500' color='#555555'> 
                    <ColorTextBlue>R</ColorTextBlue>ecommend <ColorTextRed>F</ColorTextRed>or <ColorTextYellow>Y</ColorTextYellow>ou 
                </Text>
                <RecommandScrollView className='scrollCotainer' borderRadius={8} m='0 auto' width={0.8} alignSelf='auto'>
                    <RecommandCard image= {this.randomImage()}></RecommandCard>
                    <RecommandCard image= {this.randomImage()}></RecommandCard>
                    <RecommandCard image= {this.randomImage()}></RecommandCard>
                    <RecommandCard image= {this.randomImage()}></RecommandCard>
                    <RecommandCard image= {this.randomImage()}></RecommandCard>
                    <RecommandCard image= {this.randomImage()}></RecommandCard>
                    <RecommandCard image= {this.randomImage()}></RecommandCard>
                    <RecommandCard image= {this.randomImage()}></RecommandCard>
                    <RecommandCard image= {this.randomImage()}></RecommandCard>
                    <RecommandCard image= {this.randomImage()}></RecommandCard>
                    <RecommandCard image= {this.randomImage()}></RecommandCard>
                    <RecommandCard image= {this.randomImage()}></RecommandCard>
                </RecommandScrollView>
            </Box>
        )
    }
}

export default Recommand