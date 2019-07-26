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
import { faBed, faBath } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import ReviewCard from "../../components/Review";
import { faStar, faStarHalfAlt } from "@fortawesome/free-solid-svg-icons";
import { faStar as emStar } from "@fortawesome/free-regular-svg-icons";
import Footer from '../../components/Footer';
import ReactPaginate from 'react-paginate';
import './Detail.css'
import axios from 'axios'

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

const totalLabel = styled.span`
    font-size: 20px;
    font-weight: 200;
`

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
    font-size: 30px;
    font-weight: 500;
    transition: 1s cubic-bezier(0.2, 0.8, 0.2, 1);
    outline: none;
    cursor: pointer;
    margin-top: 20px;
    margin-bottom: 30px;

    &:hover {
        
    }
`

// const images = [
//     'http://placekitten.com/1500/500',
//     'http://placekitten.com/4000/3000',
//     '//placekitten.com/800/1200',
//     '//placekitten.com/1500/1500',
//   ];


class DetailPage extends Component {
    componentDidMount() {
        this.getHouseInfo()
        this.getReviewInfo()
    }

    getHouseInfo() {
        //TODO get user info

        const { id } = this.props.match.params
        axios.get(`http://13.211.203.224/comp9900/house/${id}`)
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    console.log("----------------")
                    console.log(res.data.data)

                    this.setState({
                        info: res.data.data,
                        images: res.data.data.imageList
                    })
                } else {
                    console.log('error')
                }
            })
    }

    getReviewInfo() {
        //TODO get user info

        const { id } = this.props.match.params
        axios.get(`http://13.211.203.224/comp9900/house/${id}/review`)
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success
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
            info: {},
            review:[],
            activePage: 5,
            images: [],
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

    handleBook = () => {
        window.location.assign('/search');
        // window.location.assign('/search?'+this.state.query);
      }

    
    handlePageChange(pageNumber) {
        console.log(`active page is ${pageNumber}`);
        this.setState({activePage: pageNumber});
    }

    starRendering = () => {

        const items = [];
        
        if (this.state.info.starRating == null) {
            return
        }

        let rate = this.state.info.starRating < 0 ? 0 : this.state.info.starRating 
        let fullStar = Math.floor(rate)
        let halfStar = rate > fullStar ? 1 : 0
        let emptyStar = 5 - fullStar - halfStar
        console.log(rate, fullStar, emptyStar)
        Array(fullStar).fill().map((_, ) => 
            items.push(<FontAwesomeIcon icon={faStar} size='2x'/>)
        )

        Array(halfStar).fill().map((_, ) => 
            items.push(<FontAwesomeIcon icon={faStarHalfAlt} size='2x'/>)
        )

        Array(emptyStar).fill().map((_, ) => 
            items.push(<FontAwesomeIcon icon={emStar} size='2x'/>)
        )
        return items
    }

    render() {

        var moment = require('moment');
        const { photoIndex, isOpen } = this.state;

        return (
            <div>
                <SearchHeader />
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
                                    <Heading as='h1' fontSize="40px"> {this.state.info.brifeInfor} </Heading>
                                </Box>
                            </Flex>

                            <Text py={2} fontSize="17px">
                                {this.state.info.description}
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
                                    onPageChange={this.handlePageClick}
                                    containerClassName={'pagination'}
                                    subContainerClassName={'pages pagination'}
                                    activeClassName={'active'}
                                    />
                            </div>
                        </Box>

                        <Box width={0.4} >
                            <Card border="1px solid #eee" p={3} borderRadius={5}>
                                <Flex>
                                    <Text fontSize="30px" fontWeight="500">${this.state.info.price} <span fontSize="5px" fontWeight="200"> total</span> </Text>  
                                    <Flex alignItems="center">
                                        <Text color="#FFD000">
                                            {this.starRendering()}
                                        </Text>
                                        {/* <Text alignSelf="center" pl="3px" fontSize="25px" color="#FFD000" fontWeight="500">{this.state.info.starRating}</Text> */}
                                    </Flex>  
                                </Flex>
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

                    <Footer></Footer>
            </div>
        )
    }
}


export default  DetailPage;
