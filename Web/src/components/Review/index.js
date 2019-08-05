import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar, faStarHalfAlt } from "@fortawesome/free-solid-svg-icons";
import { faStar as emStar } from "@fortawesome/free-regular-svg-icons";

const Avatar = styled(Image)({
    width: '50px',
    height: '50px',
    objectFit: 'cover'
})

export default class ReviewCard extends Component {
    static propTypes = {
        prop: PropTypes
    }

    render() {
        return (
            <Card py="8px">
                <Flex pb="10px">
                    <Box>
                        <Avatar borderRadius="25px" src={this.props.data.client ? this.props.data.client.picUrl : 
                            "https://iupac.org/wp-content/uploads/2018/05/default-avatar.png"}></Avatar>
                    </Box>
                    <Box pl="15px">
                        <Flex>
                        <Text fontSize="25px" fontWeight="600" py="0px">{this.props.data.client? this.props.data.client.clientName : "Unknow"}</Text>
                        </Flex>
                    </Box>
                </Flex>
                <Text fontSize="16px"> {this.props.data.comment} </Text>
                <Card my={3} border="1px solid #eee" width="90%"></Card>
            </Card>
        )
    }
}
