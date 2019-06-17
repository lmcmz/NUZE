import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import './RecommandCard.css'

const Recommand = styled(Flex)({
    width: '200px',
    height: '330px',
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
                        borderRadius={2}
                        borderWidth={1}
                        borderColor='#444'>
                            <Box className="RecommandImage">
                            <RecommandImage borderRadius={3} src={this.props.image} />
                            </Box>
                        
                        <RecommandText px={2}>
                        <Heading as='h3' color='#fff'>
                            Card
                        </Heading>
                        <Text fontSize={0} color='#fff'>
                            Small meta text
                        </Text>
                        </RecommandText>
                    </Card>
                </Recommand>
            </div>
        )
    }
}