import React, { Component } from 'react';
import './Home.css';
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import HeroMask from '../../components/HeroMask/HeroMask'
import SearchCard from '../../components/SearchCard/SearchCard';

const LeftBox = styled(Box)({
  display: 'flex',
  height: '100vh',
  width: '50%',
  alignItems: 'center',
  justifyContent: 'center'
})

class Home extends Component {
  render() {
    return (
      <div className="App">
        <Flex className="Section">
          <LeftBox>
            <SearchCard />
          </LeftBox>

          <Box width={1/2}>
            <Flex>
              <video autoPlay loop playsInline muted>
                <source src={require('../../resource/video/trip.mp4')} type="video/mp4" />
              </video>
              <HeroMask />
            </Flex>
          </Box>
        </Flex>
      </div>
    );
  }
}

export default Home;
