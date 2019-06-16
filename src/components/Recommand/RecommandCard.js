import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'


const Recommand = styled(Flex)({
    width: '200px',
    height: '400px',
})

const RecommandImage = styled(Image)({
    width: '200px',
    height: '280px',
    objectFit: 'cover'
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
                <Recommand px='20'>
                    <Card
                        p={1}
                        borderRadius={2}
                        borderWidth={1}
                        borderColor='#444'>
                        <RecommandImage borderRadius={3} src={this.props.image} />
                        <Box px={2}>
                        <Heading as='h3'>
                            Card
                        </Heading>
                        <Text fontSize={0}>
                            Small meta text
                        </Text>
                        </Box>
                    </Card>
                </Recommand>
            </div>
        )
    }
}