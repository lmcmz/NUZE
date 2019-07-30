import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'

const BlurImage = styled.img`
    -webkit-filter: blur(5px);
    filter: blur(5px);
    height: 100%;
    width: 100%;
    object-fit: cover;
    height: 550px;
    transform: scale(1.02);
`

const Container = styled(Flex)({
    height: '600px',
    flexDirection: 'column',
    width: '100%',
})

const CityLabel = styled(Text)({
    position: 'absolute',
    top: '30%',
    left: '50%',
    transform: 'translate(-50%, -30%)',
    borderRadius: '10px',
    overflow: 'hidden',
    // paddingHorizontal: '20px'
    padding: "15px",
    boxShadow: "0 0 16px rgba(0, 0, 0, .25)"
})

const TitleSection = styled(Flex)({
    // height: "100px",
    position: 'relative',
    top: "-10px",
})

export default class BlurHeader extends Component {
    static propTypes = {
        prop: PropTypes
    }

    render() {
        return (
            <Container>
                <BlurImage src={this.props.data.url} />
                <CityLabel color="#FFD000" bg="#fff" fontSize="35px" fontWeight="800" >{this.props.data.location}</CityLabel>
                <TitleSection bg="white" justifyContent="center" alignItems="center" style={{height:'100px'}}>
                    <Text py="30px" bg='white' fontSize="25px" fontWeight="800" textAlign="center" color="#444">All {this.props.data.count} results</Text>
                </TitleSection>
            </Container>
        )
    }
}
