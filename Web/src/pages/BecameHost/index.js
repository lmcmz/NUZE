import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Button, Image, Heading, Text, Flex } from 'rebass';
import styled, {keyframes} from 'styled-components'
import Header from '../../components/Header';
import Footer from '../../components/Footer';

const anime = keyframes`
  0% {
    background-position: 0% 50%;
    /* transform: rotate(0deg); */
  }

  50% {
    background-position: 100% 50%;
    /* transform: rotate(0deg); */
  }

  100% {
    background-position: 0% 50%;
  }
`;

const Container = styled.div`
    padding-top: 90px;
    height: 100vh;
    width: 100vw;
    background-image: url("https://images.unsplash.com/photo-1521791055366-0d553872125f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80");
    background-size: cover;                      /* <------ */
    background-repeat:   no-repeat;
    background-position: center 90px;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    justify-content: center;
`
// styled(Box)({
//     height: "100vh",
//     width: "100vW",
//     overflow: "hidden",
// })


const BgImage = styled(Image)({
    // position: "absolute",
    width: "100%",
    height: "100%",
})

const SearchButton = styled.button`
    width: 100%;
    height: 60px;
    border-radius: 8px;
    border: none;
    /* background: linear-gradient(to right, #FF6565 0%, #FF6565 100%);; */
    background: linear-gradient(-45deg, #FFA63D, #FF3D77, #338AFF, #3CF0C5);
    background-size: 600%;
    animation: ${anime} 16s linear infinite;
    color: white;
    font-size: 2em;
    font-weight: 500;
    transition: 1s cubic-bezier(0.2, 0.8, 0.2, 1);
    outline: none;
    cursor: pointer;

    &:hover {
        
    }
`

const HostCard = styled(Card)({
    width: "500px",
    height:"430px",
    backgroundColor: "#ffffff",
    borderRadius: "10px",
    marginLeft:"150px"
})

const ColorText = styled.span`
    font-weight: 800;
    align-self: flex-end;
    background: linear-gradient(104deg, #60B3DB 20%, #FF6565 50%,  #FFD000 100%);
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    text-align: right;
`

const PriceText = styled.span`
    align-self: flex-end;
    background: linear-gradient(104deg, #60B3DB 20%, #60B3DB 50%,  #60B3DB 100%);
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    text-align: right;
`

const Input = styled.input`
    margin-top: 20px;
    margin-bottom: 20px;
    width: 100%;
    height: 50px;
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

export default class BecameHost extends Component {
    static propTypes = {
        prop: PropTypes
    }
    render() {
        return (
            <div>
                <Header />
                <Container>
                    <HostCard boxShadow='0 0 16px rgba(0, 0, 0, .25)' p="30px">
                        <Text fontSize="35px" fontWeight="650" color="#444444" > Become A <ColorText>Host</ColorText> </Text>
                        <Text pt="10px" fontSize="20px" fontWeight="400" color="#444444" > Find out your future income </Text>
                        <Input type="text" name="location" placeholder="Where"></Input>
                        <Input type="text" name="capacity" placeholder="Number of bedrooms"></Input>
                        <Text pb="20px" fontSize="35px" fontWeight="600" color="#444444"> <PriceText>$ 1210</PriceText> per month</Text>
                        <SearchButton> Get start </SearchButton>
                    </HostCard>
                </Container>
                <Footer />
            </div>
        )
    }
}
