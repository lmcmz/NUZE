import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled, { keyframes } from 'styled-components';
import SearchHeader from '../../components/SearchHeader'
import Lightbox from 'react-image-lightbox';
import 'react-image-lightbox/style.css';
import PropertyCard from '../../components/PropertyList/PropertyCard'
import { DateRangePicker, DayPickerRangeController } from 'react-dates';
import {Dropdown} from 'reactjs-dropdown-component';
// import moment from 'react-moment';
import { faBed, faBath } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

const anime = keyframes`
  0% {
    background-position: 0% 50%;
    /* transform: rotate(0deg); */
  }

  50% {
    background-position: 100% 50%;
    /* transform: rotate(0deg); */
  }

  100% {
    background-position: 0% 50%;
  }
`;

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

const SearchButton = styled.button`
    width: 100%;
    height: 80px;
    border-radius: 8px;
    border: none;
    /* background: linear-gradient(to right, #FF6565 0%, #FF6565 100%);; */
    background: linear-gradient(-45deg, #FFA63D, #FF3D77, #338AFF, #3CF0C5);
    background-size: 600%;
    animation: ${anime} 16s linear infinite;
    color: white;
    font-size: 2em;
    font-weight: 500;
    transition: 1s cubic-bezier(0.2, 0.8, 0.2, 1);
    outline: none;
    cursor: pointer;
    margin-top: 20px;
    margin-bottom: 30px;

    &:hover {
        
    }
`

const images = [
    'http://placekitten.com/1500/500',
    'http://placekitten.com/4000/3000',
    '//placekitten.com/800/1200',
    '//placekitten.com/1500/1500',
  ];
  

export default class DetailPage extends Component {

    constructor(props){
        super(props);
        this.state = {
            images: this.props.images,
            photoIndex: 0,
            isOpen: false,
            startDate: null,
            endDate:null,
            focusedInput: null,
            adultNumber: [
                {
                    id: 0,
                    title: '0',
                    selected: false,
                    key: 'number'
                },
                {
                    id: 1,
                    title: '1',
                    selected: false,
                    key: 'number'
                },
                {
                    id: 2,
                    title: '2',
                    selected: false,
                    key: 'number'
                },
                {
                    id: 3,
                    title: '3',
                    selected: false,
                    key: 'number'
                },
                {
                    id: 4,
                    title: '4',
                    selected: false,
                    key: 'number'
                }
                ],
            number: [
                {
                    id: 0,
                    title: '0',
                    selected: false,
                    key: 'number'
                },
                {
                    id: 1,
                    title: '1',
                    selected: false,
                    key: 'number'
                },
                {
                    id: 2,
                    title: '2',
                    selected: false,
                    key: 'number'
                },
                {
                    id: 3,
                    title: '3',
                    selected: false,
                    key: 'number'
                },
                {
                    id: 4,
                    title: '4',
                    selected: false,
                    key: 'number'
                }
                ]
        };
    }

    randomImage = () => {
        return "https://source.unsplash.com/random?sig="+ Math.floor(Math.random() * Math.floor(1000)) +"/720x1280";
    };

    handleBook = () => {
        window.location.assign('/search');
        // window.location.assign('/search?'+this.state.query);
      }

    render() {

        const { photoIndex, isOpen } = this.state;

        return (
            <div>
                <SearchHeader />
                    <GalleryBox pt="90px">
                        <GalleryGrid>
                            <GalleryContainer width={1/2} mr="2px">
                                <GalleryImage onClick={() => this.setState({ isOpen: true })} src={this.randomImage()}/>
                            </GalleryContainer>
                            <GalleryContainer width={1/4} mr="2px">
                                <GalleryContainerS mb="2px">
                                    <GalleryImage src={this.randomImage()} />
                                </GalleryContainerS>
                                <GalleryContainerS>
                                    <GalleryImage src={this.randomImage()} />
                                </GalleryContainerS>
                            </GalleryContainer>
                            <GalleryContainer width={1/4}>
                                <GalleryContainerS mb="2px">
                                    <GalleryImage src={this.randomImage()} />
                                </GalleryContainerS>
                                <GalleryContainerS>
                                    <GalleryImage src={this.randomImage()} />
                                </GalleryContainerS>
                            </GalleryContainer>
                        </GalleryGrid>
                        {isOpen && (
                            <Lightbox
                                mainSrc={images[photoIndex]}
                                nextSrc={images[(photoIndex + 1) % images.length]}
                                prevSrc={images[(photoIndex + images.length - 1) % images.length]}
                                onCloseRequest={() => this.setState({ isOpen: false })}
                                onMovePrevRequest={() =>
                                this.setState({
                                    photoIndex: (photoIndex + images.length - 1) % images.length,
                                })
                                }
                                onMoveNextRequest={() =>
                                this.setState({
                                    photoIndex: (photoIndex + 1) % images.length,
                                })
                                }
                            />
                            )}
                    </GalleryBox>

                    <Flex py="20px" width={0.7} margin="auto">
                        <Box width={0.6} >
                            <Flex>
                                <Box>
                                    <Text fontSize="18px" color="#60B3DB"> Text Text </Text>
                                    <Heading as='h1' fontSize="40px"> Text Text Text Text Text Text </Heading>
                                </Box>
                            </Flex>

                            <Text py={2} fontSize="20px">
                                    Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text 
                                    Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text 
                                    Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text 
                            </Text>
                            <div>
                                <Card my={2} border="1px solid #eee" width="90%"></Card>
                                <Heading as='h3' py={3}>Facilities</Heading>
                                <Flex >
                                    <Card py="20px" px="3px" mr={3} border="1px solid #eee" borderRadius={8} width={200} justifyContent="center">
                                        <Text textAlign="center" py="5px"><FontAwesomeIcon icon={faBed} size='4x'/></Text>
                                        <Text textAlign="center" fontSize="20px">1 Double Bed</Text>
                                    </Card>
                                    <Card py="20px" px="3px" border="1px solid #eee" borderRadius={8} width={200} justifyContent="center">
                                        <Text textAlign="center" py="5px"><FontAwesomeIcon icon={faBath} size='4x'/></Text>
                                        <Text textAlign="center" fontSize="20px">2 Bathroom</Text>
                                    </Card>
                                </Flex>
                            </div>

                            <div>
                                <Card my={2} border="1px solid #eee" width="90%"></Card>
                                <Heading as='h3' py={3}>Availability</Heading>
                                
                                {/* <DayPickerRangeController
                                    startDate={this.state.startDate} // momentPropTypes.momentObj or null,
                                    endDate={this.state.endDate} // momentPropTypes.momentObj or null,
                                    onDatesChange={({ startDate, endDate }) => this.setState({ startDate, endDate })} // PropTypes.func.isRequired,
                                    focusedInput={this.state.focusedInput} // PropTypes.oneOf([START_DATE, END_DATE]) or null,
                                    onFocusChange={focusedInput => this.setState({ focusedInput })} // PropTypes.func.isRequired,
                                    initialVisibleMonth={() => moment().add(2, "M")} // PropTypes.func or null,
                                /> */}

                            </div>
                        </Box>

                        <Box width={0.4} >
                            <Card border="1px solid #eee" p={3} borderRadius={5}>
                                <Heading>$78 <span fontSize="8px"> total</span> </Heading> 
                                <Box pt={2} pb={2} >
                                <Flex flexDirection='column' textAlign='left' alignItems='flex-start'>
                                    <Text fontSize={1} color='grey' lineHeight={3}>Date</Text>
                                    <DateRangePicker
                                        startDate={this.state.startDate} // momentPropTypes.momentObj or null,
                                        startDateId="your_unique_start_date_id" // PropTypes.string.isRequired,
                                        endDate={this.state.endDate} // momentPropTypes.momentObj or null,
                                        endDateId="your_unique_end_date_id" // PropTypes.string.isRequired,
                                        onDatesChange={({ startDate, endDate }) => this.setState({ startDate, endDate })} // PropTypes.func.isRequired,
                                        focusedInput={this.state.focusedInput} // PropTypes.oneOf([START_DATE, END_DATE]) or null,
                                        onFocusChange={focusedInput => this.setState({ focusedInput })} // PropTypes.func.isRequired,
                                        showClearDates='true'
                                        showDefaultInputIcon='true'
                                        reopenPickerOnClearDates='true'
                                        noBorder='true'
                                        backgroundColor='black'

                                        />
                                    </Flex>
                                </Box>
                    
                                <Box pt={2} pb ={4}>
                                    <Flex flexDirection='column' width={1} textAlign='left' alignItems='flex-start'>
                                        <Text fontSize={1} color='grey' lineHeight={3}>Guest</Text>
                                        <Flex width={1}>
                                            <Dropdown
                                                title="Adults"
                                                list={this.state.adultNumber}
                                                resetThenSet={this.resetThenSet}
                                            />
                                            <Dropdown
                                                title="Children"
                                                list={this.state.number}
                                                resetThenSet={this.resetThenSet}
                                            />
                                            <Dropdown
                                                title="Room"
                                                list={this.state.number}
                                                resetThenSet={this.resetThenSet}
                                            />
                                        </Flex>
                                    </Flex>
                                </Box>

                                <SearchButton onClick={this.handleBook}> Book </SearchButton>
                            </Card>
                        </Box>
                    </Flex>
            </div>
        )
    }
}

