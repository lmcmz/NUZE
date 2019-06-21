import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Image, Heading, Text, Flex, Button } from 'rebass';
import styled from 'styled-components'
import Toggle from 'react-toggle'
import "react-toggle/style.css"
import './FilterBar.css'

const FilterBarDiv = styled.div`
    width: 100%;
    padding-top: 90px;
    padding-left: 40px;
    padding-right: 40px;
    height: 60px;
    /* vertical-align: baseline; */
    border-bottom: 0.5px solid #eee;
    display: flex;
`

const FilterButton = styled(Button)({
    backgroundColor: '#fff',
    color: '#444',
    border: '1px solid #DBDFE2',
    padding: '10px 20px',
    margin: '10px 20px',
    outline: 'none',
    cursor: 'pointer',
    fontSize: '13px',
})

// const MapToggle = styled(Flex)({
// })



export default class FilterBar extends Component {
    constructor(props) {
        super(props)
        this.state = {
            value: true
        }
    }

    render() {
        return (
            <FilterBarDiv>
                <Flex width={2/3}>
                    <FilterButton>Date</FilterButton>
                    <FilterButton>Price</FilterButton>
                    <FilterButton>Guest</FilterButton>
                    <FilterButton>Distance</FilterButton>
                </Flex>
                <Flex width={1/3} pr='100px' justifyContent='flex-end' alignItems='center'>
                    <Text fontSize='13px' pr='5px'>Map View</Text>
                    <label >
                        <Toggle
                            className='map-toggle'
                            defaultChecked={this.state.baconIsReady}
                            onChange={this.handleBaconChange} />
                    </label>
                </Flex>
            </FilterBarDiv>
        )
    }
}
