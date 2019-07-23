
import React, { Component } from 'react'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import PropTypes from 'prop-types'
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar, faStarHalfAlt } from "@fortawesome/free-solid-svg-icons";
import { faStar as emStar } from "@fortawesome/free-regular-svg-icons";
import './PropertyCard.css'
import {Link, withRouter} from 'react-router-dom'
// import { browserHistory } from 'react-router'
// import Image from 'react-graceful-image'


const Property = styled(Flex)({
    width: '100%',
    // height: '300px',
    outline: 'none',
    borderRadius: '3px',
    justifyContent: 'center',
})

const PropertyImage = styled(Image)({
    width: '400px',
    height: '250px',
    objectFit: 'cover',
    borderRadius: '3px',
    backgroundColor: '#eee',
    cursor: 'pointer',
})


const PropertyLocationText = styled(Text)({
    textTransform: 'uppercase',
})

const PropertyTitleText = styled(Text)({
    height: "60px",
})

const ReviewCountText = styled.span`
    padding-left: 5px;
`

class PropertyCard extends Component {

    constructor(props) {
        super(props)
        this.state = {
          show: true,
          redirect: false,
        }
    }

    countStar(rate) {
        console.log("---------")
        let fullStar = Math.floor(rate)
        let halfStar = rate > fullStar ? 1 : 0
        let emptyStar = 5 - fullStar - halfStar
        return (
            Array(fullStar).fill().map((_, ) => 
                <FontAwesomeIcon icon={faStar} size='s'/>
            )
            // ,
            // Array(halfStar).fill().map((_, ) => 
            //     <FontAwesomeIcon icon={faStarHalfAlt} size='s'/>
            // ),
            // Array(emptyStar).fill().map((_, ) => 
            //     <FontAwesomeIcon icon={emStar} size='s'/>
            // )
        )
    }

    render() {

        const items = []

        let rate = this.props.data.starRating
        let fullStar = Math.floor(rate)
        let halfStar = rate > fullStar ? 1 : 0
        let emptyStar = 5 - fullStar - halfStar

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
            <Property>
                <Card
                    p={1}
                    borderRadius={2}
                    borderWidth={1}
                    borderColor='#444'>
                    <Box>
                        <Link to="/room">
                            <PropertyImage borderRadius={3} src={this.props.image}/>
                        </Link>
                    </Box>
                    
                    <Box py={2}>
                        <PropertyLocationText color='grey' fontSize='15px' fontWeight='500' textAlign='left'> 
                            {this.props.data.neighborhood}, {this.props.data.city} 
                        </PropertyLocationText>
                    <Heading className='PropertyH3' as='h3' color='#000' textAlign='left'>
                        
                    </Heading>
                    <PropertyTitleText py={1} fontSize={18} fontWeight="600" color='#000' textAlign='left'>
                        {this.props.data.brifeInfor}
                    </PropertyTitleText>

                    <Text fontSize={15} color='#FFD000' textAlign='left'>
                        {/* {this.countStar(this.props.data.starRating)} */}
                        {items}
                        <ReviewCountText>
                            {this.props.data.reviewsCount} reviews
                        </ReviewCountText>
                    </Text>
                    </Box>
                </Card>
            </Property>
        )
    }
}


export default withRouter(PropertyCard);