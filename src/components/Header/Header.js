import React, { Component } from 'react'
import {Link} from 'react-router-dom'
import './Header.css'
import { Box, Flex, Card, Image, Heading, Text} from 'rebass';
import styled from 'styled-components'

const HeaderContainer = styled(Flex)({
  
})

class Header extends React.Component {

    constructor(props) {
        super(props)
        this.state = {
          hasScrolled: false
        }
    }

    componentDidMount() {
        window.addEventListener('scroll', this.handleScroll)
      }
    
      handleScroll = (event) => {
        const scrollTop = window.pageYOffset
    
        if (scrollTop > 50) {
          this.setState({ hasScrolled: true })
        } else {
          this.setState({ hasScrolled: false})
        }
      }
    

    render() {
        return (
          <div className={this.state.hasScrolled ? 'Header HeaderScrolled' : 'Header'}>
            <HeaderContainer px={300}>
              <Box width={1/2}>
                <Link className='logo' to="/"><img src={require('../../resource/image/logo.svg')} width="120" /></Link> 
              </Box>
              <Flex width={1/2} alignItems='end' justifyContent='flex-end'>
                <Link className='link link1' to="/">Become a Host</Link>
                <Link className='link link2' to="/">Register</Link>
                <Link className='link link3' to="/">Login</Link>
                {/* <button onClick={this.loginHandle}>Login</button> */}
              </Flex>
            </HeaderContainer>
          </div>
        )
      }
}

export default Header