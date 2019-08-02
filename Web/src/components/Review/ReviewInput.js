import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Button, Card, Image, Heading, Text, Flex } from 'rebass';
import styled, { keyframes } from 'styled-components';
import { faStar, faStarHalfAlt } from "@fortawesome/free-solid-svg-icons";
import { faStar as emStar } from "@fortawesome/free-regular-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

const PropertyImage = styled(Image)({
    height: '80px',
    width: '120px',
    paddingLeft: "10px",
    borderRadius: "8px",
    overflow: "hidden",
    paddingRight: "20px",
})

const DescInput = styled.textarea`
    width: 100%;
    height: 150px;
    border:none;
    border-radius: 8px;
    background-color : rgba( 0, 0, 0, 0.05);
    padding-top: 10px;
    font-size: 18px;
    outline: none;
    margin-top: 8px;
    /* margin-left: 9px; */

    &::-webkit-input-placeholder {
        color: rgb(163, 163, 163);;
        font-size: 18px;
    }
`

export default class ReviewInputCard extends Component {
    constructor(props){
        super(props);
        this.state = {
        };
    }

    render() {
        console.log(this.props.data.starRating)

        const items = [];
        Array(5).fill().map((_, ) => 
            items.push(
                
                <FontAwesomeIcon color="#FFD000" icon={emStar} size='1x'/>
            )
        )

        return (
            <Card width={0.8} py={20} my={20} borderRadius="10px" m="0 auto" border="1px solid #eee">
                <Flex>
                    <Flex>
                        <PropertyImage src={this.props.data.picUrl} />
                    </Flex>
                    <Flex flexDirection="column">
                        <Text>{this.props.data.brifeInfor}  {items}
                        </Text>
                        <DescInput placeholder="Write your review" />
                        <Button mt={30} width="150px" bg="#60B3DB" >Submit</Button>
                    </Flex>
                </Flex>
                
            </Card>
        )
    }
}
