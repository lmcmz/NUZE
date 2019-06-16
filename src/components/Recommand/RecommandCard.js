import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'

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
                <Box width={200} px='20'>
                    <Card
                        p={1}
                        borderRadius={2}
                        borderWidth={1}
                        borderColor='#444'>
                        <Image src='https://source.unsplash.com/random/1280x720' />
                        <Box px={2}>
                        <Heading as='h3'>
                            Card
                        </Heading>
                        <Text fontSize={0}>
                            Small meta text
                        </Text>
                        </Box>
                    </Card>
                </Box>
            </div>
        )
    }
}