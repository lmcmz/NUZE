import React, { Component } from 'react'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar, faStarHalfAlt, faMapMarkerAlt } from "@fortawesome/free-solid-svg-icons";
import { faStar as emStar } from "@fortawesome/free-regular-svg-icons";
import {Link, withRouter} from 'react-router-dom'

const ImagePreview = styled(Image)({
    height: "150px",
    width: "230px",
    backgroundColor: "lightgrey",
    borderRadius: '3px'
})

const InfoWindow = (props) => {
    const { place } = props;
    const infoWindowStyle = {
      position: 'relative',
      bottom: '150',
      left: '-45px',
      width: 250,
      backgroundColor: 'white',
      boxShadow: '0 2px 7px 1px rgba(0, 0, 0, 0.3)',
      padding: 10,
      fontSize: 14,
      zIndex: 100,
      borderRadius: '8px',
    };

    const items = []
    let rate = place.starRating < 0 ? 0 : place.starRating
    let fullStar = Math.floor(rate)
    let halfStar = rate > fullStar ? 1 : 0
    let emptyStar = 5 - fullStar - halfStar
    // console.log(rate, fullStar, emptyStar)
    Array(fullStar).fill().map((_, ) => 
        items.push(<FontAwesomeIcon icon={faStar} size='s'/>)
    )

    Array(halfStar).fill().map((_, ) => 
        items.push(<FontAwesomeIcon icon={faStarHalfAlt} size='s'/>)
    )

    Array(emptyStar).fill().map((_, ) => 
        items.push(<FontAwesomeIcon icon={emStar} size='s'/>)
    )
  
    return (
      <div style={infoWindowStyle}>
        <Text fontSize={16} color="#60B3DB">
          {place.brifeInfor}
        </Text>

        <Text py={1} fontSize={15} color='#FFD000' textAlign='left'>
            {/* {this.countStar(this.props.data.starRating)} */}
            {items}
            <span style={{paddingLeft: '5px'}}>
                {place.reviewsCount} reviews
            </span>
        </Text>

        <Text py={1} fontSize={14} color="lightgrey">
          {place.spaceType}
        </Text>
        <Text py={1} fontSize={14} color="#444444">
            $ {place.price}
        </Text>

        <Link to={`/house/${place.houseId}`}>
            <ImagePreview src={place.picUrl}/>
        </Link>
      </div>
    );
  };
  

export default class MapDot extends Component {
    render() {
        return (
            <Text color= { this.props.data.isShow? "#60B3DB" : "#FF6565"}>
                <FontAwesomeIcon icon={faMapMarkerAlt} size='2x'/>
                {this.props.data.isShow && <InfoWindow place={this.props.data} />}
            </Text>
        )
    }
}
