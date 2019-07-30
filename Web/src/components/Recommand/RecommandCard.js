import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import './RecommandCard.css'

const Recommand = styled(Flex)({
    width: '200px',
    height: '280px',
    outline: 'none',
})

const RecommandImage = styled(Image)({
    width: '200px',
    height: '280px',
    objectFit: 'cover'
})

const RecommandText = styled(Box)({
    position: 'absolute',
    top: '230px',
})

export default class RecommandCard extends Component {
    constructor(props) {
        super(props)
        this.state = {
          show: true
        }
    }

    render() {
        return (
            <div>
                <Recommand>
                    <Card
                        p={1}
                        borderRadius={8}
                        borderWidth={1}
                        borderColor='#444'>
                            <Box className="RecommandImage">
                            <RecommandImage borderRadius={5} src={this.props.data.url} />
                            </Box>
                        
                        <RecommandText px={2}>
                        <Text fontSize="20px" fontWeight="650" color='#e5e5e5'>
                            {this.props.data.location}
                        </Text>
                        <Text fontSize={0} color='#e0e0e0'>
                            {this.props.data.count} Properties
                        </Text>
                        </RecommandText>
                    </Card>
                </Recommand>
            </div>
        )
    }
}