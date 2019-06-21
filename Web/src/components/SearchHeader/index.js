import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled, { keyframes } from 'styled-components'
import {Link} from 'react-router-dom'
import './SearchHeader.css'
import { faSearch } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

const SearchHeaderDiv = styled.div`
    position: fixed;
    width: 100%;
    padding: 20px 0;
    z-index: 100;
    transition: 0.8s cubic-bezier(0.2, 0.8, 0.2, 1);
    background: rgba(255, 255, 255, 0.95);
    vertical-align: baseline;
    border-bottom: 0.5px solid #eee;
`

const DestinationInput = styled.input`
    width: 60%;
    height: 50px;
    border:none;
    border-radius: 3px;
    background-color : rgba( 0, 0, 0, 0.05);
    padding-left: 0.5em;
    font-size: 22px;
    outline: none;
    margin-left: 10px;
    margin-right: 10px;

    &::-webkit-input-placeholder {
        color: rgb(163, 163, 163);;
        font-size: 22px;
    }
`

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


const SearchButton = styled.button`
    width: 70px;
    height: 50px;
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

export default class SearchHeader extends Component {
    static propTypes = {
        prop: PropTypes
    }

    render() {
        return (
            <SearchHeaderDiv>
                <Flex px={50}>
                <Flex width={1/2}>
                    <Link className='logo' to="/"><img src={require('../../resource/image/logo-only.svg')} width="35" /></Link> 
                    <DestinationInput type="text" name="destination" placeholder="Kiama"></DestinationInput>
                    <SearchButton><FontAwesomeIcon icon={faSearch} size='xs'/></SearchButton>
                </Flex>
                <Flex width={1/2} alignItems='end' justifyContent='flex-end'>
                    <Link className='link link0' to="/">Join us</Link>
                    <Link className='link link1' to="/">Become a Host</Link>
                    <Link className='link link2' to="/">Register</Link>
                    <Link className='link link3' to="/">Login</Link>
                </Flex>
                </Flex>
            </SearchHeaderDiv>
        )
    }
}
