import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled, { keyframes } from 'styled-components';
import SearchHeader from '../../components/SearchHeader'
import Lightbox from 'react-image-lightbox';
import 'react-image-lightbox/style.css';
import PropertyCard from '../../components/PropertyList/PropertyCard'
import { DateRangePicker, DayPickerRangeController } from 'react-dates';
import {Redirect} from 'react-router-dom'
import { faBed, faBath, faWifi, faParking, faUtensils, faTshirt} from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import ReviewCard from "../../components/Review";
import Footer from '../../components/Footer';
import ReactPaginate from 'react-paginate';
import './Detail.css'
import axios from 'axios'
import GoogleMapReact from 'google-map-react';
import MapDot from '../../components/MapDot';
import BookCard from '../../components/BookCard';
import queryString from "query-string";

const GalleryBox = styled(Box)({
    display: "block",
    minHeight: "1px",
    width: "100%",
    height: "80vh",
    // overflow: "hidden"
})

const GalleryGrid = styled(Flex)({
    height: '70vh',
    overflow: 'hidden',
})

const GalleryContainer= styled(Box)({
    height: '100%',
    overflow: 'hidden',
    backgroundColor: '#eee',
})

const GalleryContainerS= styled(Box)({
    height: '50%',
    overflow: 'hidden',
    backgroundColor: '#eee',
})

const GalleryImage = styled(Image)({
    height: '100%',
    width: '100%',
    objectFit: 'cover',
    paddingRight: '2px',
    overflow: 'hidden',
    transition: '0.8s cubic-bezier(0.2, 0.8, 0.2, 1)',
    '&:hover': {
        transform: 'scale(1.1)',
    }
})

const totalLabel = styled.span`
    font-size: 20px;
    font-weight: 200;
`

// const images = [
//     'http://placekitten.com/1500/500',
//     'http://placekitten.com/4000/3000',
//     '//placekitten.com/800/1200',
//     '//placekitten.com/1500/1500',
//   ];

const MapWarpper=styled(Box)({
    height: "500px"
})


class DetailPage extends Component {


    componentDidMount() {
        this.getHouseInfo()
        this.getReviewInfo(0)
    }

    handleChange(key, e) {
        this.setState({
            [key]: e.target.value
        })
    }

    getHouseInfo() {
        const { id } = this.props.match.params
        axios.get(`http://13.211.203.224/comp9900/house/${id}`)
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    console.log("----------------")
                    // console.log(res.data.data)

                    let location = this.state.center
                    location.lat = res.data.data.lat
                    location.lng = res.data.data.lng
                    console.log(res.data.data.reviewsCount)

                    let pageCount = Math.ceil(res.data.data.reviewsCount/10)
                    this.setState({
                        info: res.data.data,
                        images: res.data.data.imageList,
                        center: location,
                        pageCount: pageCount
                    })
                } else {
                    console.log('error')
                }
            })
    }

    handlePageChange(pageNumber) {
        // this.setState({activePage: pageNumber});
        console.log(pageNumber.selected)
        this.getReviewInfo(pageNumber.selected)
    }

    getReviewInfo(pageNumber) {
        //TODO get user info

        const offset = this.state.limit * pageNumber
        const limit = this.state.limit 

        const { id } = this.props.match.params
        axios.get(`http://13.211.203.224/comp9900/house/${id}/review?offset=${offset}&limit=${limit}`)
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    console.log(res.data.data)
                    this.setState({
                        review: res.data.data
                    })
                } else {
                    console.log('error')
                }
            })
    }

    constructor(props){
        super(props);
        this.state = {
            offset: 1,
            limit: 10,
            info: {},
            review:[],
            pageCount: 1,
            activePage: 1,
            images: [],
            photoIndex: 0,
            isOpen: false,
            focusedInput: null,
            center: {
                lat: -33.86515,
                lng: 151.1919
            },
            searchCity:''
        };
    }

    changeSearchCity(e){
        this.setState({
            searchCity:e.target.value
        })
    }

    render() {

        var moment = require('moment');
        const { photoIndex, isOpen } = this.state;

        var amenities = []
        var amenitiesText = []
        if (this.state.info.previewAmenities) {
            amenities = this.state.info.previewAmenities.split(',')
            amenities.map( x => {
                let icon = ""
                switch (x) {
                    case "Wireless Internet":
                        icon = <FontAwesomeIcon style={{marginRight:"5px"}} icon={faWifi} size='1x'/>
                        break;
                    case "Free parking on premises":
                        icon = <FontAwesomeIcon style={{marginRight:"5px"}} icon={faParking} size='1x'/>
                        break;
                    case "Kitchen":
                        icon = <FontAwesomeIcon style={{marginRight:"5px"}} icon={faUtensils} size='1x'/>
                        break;
                    case "Washer":
                        icon = <FontAwesomeIcon style={{marginRight:"5px"}} icon={faTshirt} size='1x'/>
                        break;
                }
                console.log(icon)
                amenitiesText.push(<Text py="5px" color="#444">{icon}<span style={{paddingLeft:"5px"}}> {x}</span></Text>)
            })
        }
        console.log(amenities)

        return (
            <div>
                <SearchHeader changeSearchCity = {this.changeSearchCity.bind(this)} searchCity = {this.state.searchCity}/>
                    <GalleryBox pt="90px">
                        <GalleryGrid>
                            <GalleryContainer width={1/2} mr="2px">
                                <GalleryImage 
                                onClick={() => this.setState({ isOpen: true })} 
                                src={this.state.info.imageList ? this.state.info.imageList[0] : null}
                            />
                            </GalleryContainer>
                            <GalleryContainer width={1/4} mr="2px">
                                <GalleryContainerS mb="2px">
                                    <GalleryImage 
                                    onClick={() => this.setState({ isOpen: true })}
                                    src={this.state.info.imageList ? this.state.info.imageList[1] : null}
                                    />
                                </GalleryContainerS>
                                <GalleryContainerS>
                                    <GalleryImage 
                                    onClick={() => this.setState({ isOpen: true })}
                                    src={this.state.info.imageList ? this.state.info.imageList[2] : null}
                                    />
                                </GalleryContainerS>
                            </GalleryContainer>
                            <GalleryContainer width={1/4}>
                                <GalleryContainerS mb="2px">
                                    <GalleryImage 
                                    onClick={() => this.setState({ isOpen: true })}
                                    src={this.state.info.imageList ? this.state.info.imageList[3] : null}
                                    />
                                </GalleryContainerS>
                                <GalleryContainerS>
                                    <GalleryImage 
                                    onClick={() => this.setState({ isOpen: true })}
                                    src={this.state.info.imageList ? this.state.info.imageList[3] : null}
                                    />
                                </GalleryContainerS>
                            </GalleryContainer>
                        </GalleryGrid>
                        {isOpen && (
                            <Lightbox
                                mainSrc={this.state.images[photoIndex]}
                                nextSrc={this.state.images[(photoIndex + 1) % this.state.images.length]}
                                prevSrc={this.state.images[(photoIndex + this.state.images.length - 1) % this.state.images.length]}
                                onCloseRequest={() => this.setState({ isOpen: false })}
                                onMovePrevRequest={() =>
                                this.setState({
                                    photoIndex: (photoIndex + this.state.images.length - 1) % this.state.images.length,
                                })
                                }
                                onMoveNextRequest={() =>
                                this.setState({
                                    photoIndex: (photoIndex + 1) % this.state.images.length,
                                })
                                }
                            />
                            )}
                    </GalleryBox>

                    <Flex py="20px" width={0.7} margin="auto">
                        <Box width={0.6} >
                            <Flex>
                                <Box>
                                    <Text fontSize="18px" color="#60B3DB"> {this.state.info.neighborhood} ,{this.state.info.city} </Text>
                                    <Heading as='h1' fontSize="40px" mr="50px"> {this.state.info.brifeInfor} </Heading>
                                </Box>
                            </Flex>

                            <Text py={2} fontSize="18px" fontFamily="roboto" fontWeight="400" lineHeight="25px" mr="60px">
                                {this.state.info.description}
                            </Text>

                            <div>
                                <Card my={2} border="1px solid #eee" width="90%"></Card>
                                <Heading as='h3' py={3}>Facilities</Heading>
                                <Flex >
                                    <Card py="20px" px="3px" mr={3} border="1px solid #eee" borderRadius={8} width={200} justifyContent="center">
                                        <Text textAlign="center" py="5px"><FontAwesomeIcon icon={faBed} size='4x'/></Text>
                                        <Text textAlign="center" fontSize="20px">{this.state.info.beds} Bed</Text>
                                    </Card>
                                    <Card py="20px" px="3px" border="1px solid #eee" borderRadius={8} width={200} justifyContent="center">
                                        <Text textAlign="center" py="5px"><FontAwesomeIcon icon={faBath} size='4x'/></Text>
                                        <Text textAlign="center" fontSize="20px">{this.state.info.bathrooms} Bathroom</Text>
                                    </Card>
                                </Flex>
                            </div>

                            <div>
                                <Card my={2} border="1px solid #eee" width="90%"></Card>
                                <Heading as='h3' py={3}>Amenities</Heading>
                                <Box>
                                    {amenitiesText}
                                </Box>
                            </div>


                            <div>
                                <Card my={2} border="1px solid #eee" width="90%"></Card>
                                <Heading as='h3' py={3}>Availability</Heading>
                                
                                <DayPickerRangeController
                                    numberOfMonths={2}
                                    startDate={this.state.startDate} // momentPropTypes.momentObj or null,
                                    endDate={this.state.endDate} // momentPropTypes.momentObj or null,
                                    onDatesChange={({ startDate, endDate }) => this.setState({ startDate, endDate })} // PropTypes.func.isRequired,
                                    focusedInput={this.state.focusedInput} // PropTypes.oneOf([START_DATE, END_DATE]) or null,
                                    onFocusChange={focusedInput => this.setState({ focusedInput })} // PropTypes.func.isRequired,
                                    initialVisibleMonth={() => moment().add(2, "M")} // PropTypes.func or null,
                                />
                            </div>

                            <div>
                                <Card my={2} border="1px solid #eee" width="90%"></Card>
                                <Heading as='h3' py={3}>Location</Heading>
                                <MapWarpper>
                                    <GoogleMapReact
                                            options={{
                                                styles: customMapStyle,
                                            }}
                                        bootstrapURLKeys={{ key: "AIzaSyDLeo51fXjH1cJmOtmNjfDR29mxKOMMsKk", language:'en'}}
                                        center={{
                                            lat: this.state.info.lat,
                                            lng: this.state.info.lng
                                        }}
                                        defaultZoom={14}
                                        >
                                            <MapDot
                                                lat={this.state.info.lat}
                                                lng={this.state.info.lng}
                                                data={{isShow: false}}/>
                                    </GoogleMapReact>
                                </MapWarpper>
                            </div>

                            <div>
                                <Card my={2} border="1px solid #eee" width="90%"></Card>
                                {/* <Heading as='h3' py={3}> {this.props.reviewCounts} Reviews</Heading> */}
                                <Heading as='h3' py={3}> {this.state.info.reviewsCount} Reviews</Heading>
                                <Box>
                                    {this.state.review.map((x, i) =>
                                        <ReviewCard data={x} />
                                    )}
                                </Box>
                            </div>

                            <div>
                                <ReactPaginate
                                    previousLabel={'<'}
                                    nextLabel={'>'}
                                    breakLabel={'...'}
                                    breakClassName={'break-me'}
                                    pageCount={this.state.pageCount}
                                    marginPagesDisplayed={2}
                                    pageRangeDisplayed={5}
                                    onPageChange={this.handlePageChange.bind(this)}
                                    containerClassName={'pagination'}
                                    subContainerClassName={'pages pagination'}
                                    activeClassName={'active'}
                                    />
                            </div>
                        </Box>

                        <Box width={0.4} >
                            <BookCard data={this.state.info} />
                        </Box>
                    </Flex>

                    <Footer></Footer>
            </div>
        )
    }
}


export default  DetailPage;


const customMapStyle = [
    {
        "featureType": "water",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#e9e9e9"
            },
            {
                "lightness": 17
            }
        ]
    },
    {
        "featureType": "landscape",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#f5f5f5"
            },
            {
                "lightness": 20
            }
        ]
    },
    {
        "featureType": "road.highway",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#ffffff"
            },
            {
                "lightness": 17
            }
        ]
    },
    {
        "featureType": "road.highway",
        "elementType": "geometry.stroke",
        "stylers": [
            {
                "color": "#ffffff"
            },
            {
                "lightness": 29
            },
            {
                "weight": 0.2
            }
        ]
    },
    {
        "featureType": "road.arterial",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#ffffff"
            },
            {
                "lightness": 18
            }
        ]
    },
    {
        "featureType": "road.local",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#ffffff"
            },
            {
                "lightness": 16
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#f5f5f5"
            },
            {
                "lightness": 21
            }
        ]
    },
    {
        "featureType": "poi.park",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#dedede"
            },
            {
                "lightness": 21
            }
        ]
    },
    {
        "elementType": "labels.text.stroke",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#ffffff"
            },
            {
                "lightness": 16
            }
        ]
    },
    {
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "saturation": 36
            },
            {
                "color": "#333333"
            },
            {
                "lightness": 40
            }
        ]
    },
    {
        "elementType": "labels.icon",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "transit",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#f2f2f2"
            },
            {
                "lightness": 19
            }
        ]
    },
    {
        "featureType": "administrative",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#fefefe"
            },
            {
                "lightness": 20
            }
        ]
    },
    {
        "featureType": "administrative",
        "elementType": "geometry.stroke",
        "stylers": [
            {
                "color": "#fefefe"
            },
            {
                "lightness": 17
            },
            {
                "weight": 1.2
            }
        ]
    }
];