import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Button, Image, Heading, Text, Flex } from 'rebass';
import styled, {keyframes} from 'styled-components'
import Header from '../../components/Header';
import Footer from '../../components/Footer';
import Dropdown from 'react-dropdown';
import Geocode from 'react-geocode';
import GoogleMapReact from 'google-map-react';
import MapDot from '../../components/MapDot';
import ImageUploader from 'react-images-upload';
import {userLogin} from "../../redux/user/actions";
import connect from "react-redux/es/connect/connect";
import axios from "axios";
// import customMapStyle from '../../resource/map-style/style';

const Container = styled(Flex)({
    width: "100%",
    minHeight: "100vh",
    overflow: "hidden",
    margin:"0 auto",
})

const DestinationInput = styled.input`
    width: 50%;
    height: 50px;
    border:none;
    border-radius: 5px;
    background-color: rgba( 0, 0, 0, 0.05);
    padding-left: 10px;
    font-size: 22px;
    outline: none;

    &::-webkit-input-placeholder {
        color: rgb(163, 163, 163);;
        font-size: 22px;
    }
`


const DescInput = styled.textarea`
    width: 70%;
    height: 150px;
    border:none;
    border-radius: 3px;
    background-color : rgba( 0, 0, 0, 0.05);
    padding-left: 0.5em;
    font-size: 18px;
    outline: none;
    /* margin-top: 8px; */

    &::-webkit-input-placeholder {
        color: rgb(163, 163, 163);;
        font-size: 18px;
        padding-top: 5px;
    }
`

const MapWarpper=styled(Box)({
    height: "500px",
    width: "100%"
})

class HostForm extends Component {

    constructor(props){
        super(props);
        this.onDrop = this.onDrop.bind(this);
        this.state = {
            pictures : [],
            center: {
                lat: -33.917347,
                lng: 151.2312675,

            },
            city:'',
            brifeInfor:'',
            description:'',
            bedrooms:0,
            bathrooms:0,
            beds:0,
            previewAmenities:'',
            spaceType:'',
            price:0
        };
    }

    onDrop(pictureFiles, pictureDataURLs) {
        console.log(this.state.pictures)
        this.setState({
            pictures: this.state.pictures.concat(pictureFiles),
        });
    }

    handleTextChange = (e) => {
        console.log(e.target.value)

        Geocode.setApiKey('AIzaSyDLeo51fXjH1cJmOtmNjfDR29mxKOMMsKk')
        Geocode.enableDebug()

        Geocode.fromAddress(e.target.value).then(
            response => {
                const { lat, lng } = response.results[0].geometry.location;
                console.log(lat, lng);
                this.setState({
                    center: {lat: lat, lng: lng}
                })
            },
            error => {
                console.error(error);
            }
        )
    }
    handleChange(key, e) {
        this.setState({
            [key]: e.target.value
        })
    }
    handleDropDown(key, e) {
        this.setState({
            [key]: e.value
        })
    }

    submit(){
        console.log('submit')
        let lat = this.state.center.lat
        let lng = this.state.center.lng
        let city = this.state.city
        let brifeInfor = this.state.brifeInfor
        let description = this.state.description
        let bedrooms = this.state.bedrooms
        let bathrooms = this.state.bathrooms
        let beds = this.state.beds
        let previewAmenities = this.state.previewAmenities
        let spaceType = this.state.spaceType
        let price = this.state.price
        let data = {lat, lng, city, brifeInfor, description, bedrooms, beds, bathrooms, previewAmenities, spaceType, price}
        let bodyFormData = new FormData();
        bodyFormData.set('lat', lat);
        bodyFormData.set('lng', lng);
        bodyFormData.set('city', city);
        bodyFormData.set('brifeInfor', brifeInfor);
        bodyFormData.set('description', description);
        bodyFormData.set('bedrooms', bedrooms);
        bodyFormData.set('beds', beds);
        bodyFormData.set('guestCapacity', beds);
        bodyFormData.set('bathrooms', bathrooms);
        bodyFormData.set('previewAmenities', previewAmenities);
        bodyFormData.set('spaceType', spaceType);
        bodyFormData.set('price', price);
        // for (let picture, i of this.state.pictures) {
        //     bodyFormData.set(`image${i + 1}`, picture);
        // }
        this.state.pictures.forEach((val, index) => {
            bodyFormData.set(`image${index + 1}`, val);
        })
        let jwt = "eyJhbGciOiJIUzUxMiJ9.eyJhdXRob3JpdGllcyI6IlJPTEVfQURNSU4sQVVUSF9XUklURSIsInN1YiI6IjU3NjBfaG9zdCIsImV4cCI6MTU2NTg2MTY3MH0.B4l6EmBEfjNaWTGNfg9ezJV2szWtsx-Gc11Ph44ur1izseaD6uZx6F_ugMYzvNdaQqVYediuUi0AWf8BQPvRlA"
        axios.post('http://localhost:8080/comp9900/house', bodyFormData, { headers: { 'Authorization': jwt, 'Content-Type':'multipart/form-data'}})
            .then(res=>{
                console.log(res.data)
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    console.log('success')
                    console.log(res.data)
                    // return res.data
                } else {
                    // dispatch(errorMsg(res.data.error))
                }
            })
        console.log(data)
    }

    render() {
        const houseType = ["Entire Place", "Individual Room"]
        const guestCount = [1,2,3,4,5,6]
        const bathroomCount = [1,2,3,4]
        const bedcount = [1,2,3,4]

        return (
            <div>
                <Header />
                <Container pt="90px">

                    <Flex pl="10%" width={3/4} flexDirection="column">

                        <Text  py={20} textAlign='left' fontSize='30px' fontWeight='600' color='#555555'>
                            What kind of place are you listing?
                        </Text>

                        <Box py={30}>
                            <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> Where is you place ? </Text>
                            <DestinationInput
                                onChange={v=>this.handleChange('city',v)}
                                type="text" name="firstName" placeholder="Introduction"></DestinationInput>
                            <DestinationInput onChange={this.handleTextChange.bind(this)} type="text" name="destination" placeholder="Sydney"></DestinationInput>
                        </Box>.


                        <Box py={30}>
                            <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> Brife Introduction </Text>
                            <DescInput
                                onChange={v=>this.handleChange('brifeInfor',v)}
                                type="text" name="firstName" placeholder="Introduction"></DescInput>
                        </Box>

                        <Box py={30}>
                            <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> Description </Text>
                            <DescInput
                                onChange={v=>this.handleChange('description',v)}
                                type="text" name="firstName" placeholder="Description"></DescInput>
                        </Box>

                        <Box py={30}>
                            <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> House Type </Text>
                            <Dropdown className="dropdownWrapper"
                                      onChange={v=>this.handleDropDown('spaceType',v)}
                                      controlClassName='dropdown'
                                      arrowClassName='dropdownArrow'
                                      menuClassName='dropdownMenu'
                                      options={houseType}
                                      placeholder="House Type"
                            />
                        </Box>
                        <Box py={30}>
                            <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> How many guest can your place accommodate? </Text>
                            <Dropdown className="dropdownWrapper"
                                      onChange={v=>this.handleDropDown('guestCapacity',v)}
                                      controlClassName='dropdown'
                                      arrowClassName='dropdownArrow'
                                      menuClassName='dropdownMenu'
                                      options={guestCount}
                                      placeholder="Guest Count"
                            />
                        </Box>

                        <Box py={30}>
                            <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> How many bedrooms? </Text>
                            <Dropdown className="dropdownWrapper"
                                      onChange={v=>this.handleDropDown('bedrooms',v)}
                                      controlClassName='dropdown'
                                      arrowClassName='dropdownArrow'
                                      menuClassName='dropdownMenu'
                                      options={bathroomCount}
                                      placeholder="Bedrooms"
                                      defaultOption={1}
                            />
                        </Box>

                        <Box py={30}>
                            <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> How many beds? </Text>
                            <Dropdown className="dropdownWrapper"
                                      onChange={v=>this.handleDropDown('beds',v)}
                                      controlClassName='dropdown'
                                      arrowClassName='dropdownArrow'
                                      menuClassName='dropdownMenu'
                                      options={bathroomCount}
                                      placeholder="Beds"
                                      defaultOption={1}
                            />
                        </Box>

                        <Box py={30}>
                            <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> How many bathrooms? </Text>
                            <Dropdown className="dropdownWrapper"
                                      onChange={v=>this.handleDropDown('bathrooms',v)}
                                      controlClassName='dropdown'
                                      arrowClassName='dropdownArrow'
                                      menuClassName='dropdownMenu'
                                      options={bedcount}
                                      placeholder="Bathroom"
                                      defaultOption={1}
                            />
                        </Box>

                        <Box py={30}>
                            <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> What amenities do you offer? </Text>
                            <DestinationInput
                                onChange={v=>this.handleChange('previewAmenities',v)}
                                type="text" name="amenities" placeholder="WiFi"></DestinationInput>
                        </Box>

                        <Box py={30}>
                            <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> Uploads Photos</Text>
                            <ImageUploader
                                withIcon={true}
                                buttonText='Choose images'
                                onChange={this.onDrop}
                                imgExtension={['.jpg', '.gif', '.png', '.gif']}
                                maxFileSize={5242880}
                                withPreview={true}
                            />
                        </Box>

                        <Box py={30}>
                            <Text fontSize='20px' fontWeight='600' color='#555555' pb="20px"> What is your Price? </Text>
                            <DestinationInput
                                onChange={v=>this.handleChange('price',v)}
                                type="text" name="destination" placeholder="Price"></DestinationInput>
                        </Box>

                        <Box py={30}>
                            <Button bg="#60B3DB" fontSize="25px" onClick={() => this.submit()}> Submit </Button>
                        </Box>


                    </Flex>

                    <Flex width={1/2} pr="10%">
                        <MapWarpper>
                            <GoogleMapReact
                                options={{
                                    styles: customMapStyle,
                                }}
                                bootstrapURLKeys={{ key: "AIzaSyDLeo51fXjH1cJmOtmNjfDR29mxKOMMsKk", language:'en'}}
                                center={this.state.center}
                                defaultZoom={14}
                            >
                                <MapDot
                                    lat={this.state.center.lat}
                                    lng={this.state.center.lng}
                                    data={{isShow: false}}/>
                            </GoogleMapReact>
                        </MapWarpper>
                    </Flex>

                </Container>
                <Footer />
            </div>
        )
    }
}

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

const mapStateToProps = (state)=>({
    user:state.user
})
const actionCreators = { userLogin };
export default connect(mapStateToProps, actionCreators)(HostForm)