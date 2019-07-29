import React, { Component } from 'react'
import PropTypes from 'prop-types'
import './Search.css';
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import SearchHeader from '../../components/SearchHeader'
import queryString from 'query-string'
import FilterBar from '../../components/FilterBar'
import PropertyCard from '../../components/PropertyList/PropertyCard'
import ListCard from '../../components/ListCard'
import Footer from '../../components/Footer';
import {connect} from 'react-redux';
import toggle from '../../redux/reducers'
import { throwStatement } from '@babel/types';
import axios from 'axios'
import GoogleMapReact from 'google-map-react';
import MapDot from '../../components/MapDot';
import ReactPaginate from 'react-paginate';

const GridBox = styled(Box)({
    display: 'grid',
    gridGap: ' 50px 10px',
    // grid-template-columns: auto auto auto;
    gridTemplateColumns: '1fr 1fr 1fr 1fr 1fr',
    width: '90%',
    justifyItems: 'center',
    justifySelf: 'center',
    paddingBottom: '100px',
})

const Container = styled(Flex)({
    height: '90vh',
    width: '100vW',
})

const List = styled(Flex)({
    // overflowX: 'auto',
    height: '100%',
    overflowY: 'auto'
})

const MapWrapper = styled(Box)({
    height: '100%',
})


class Search extends Component {
    constructor(props) {
        super(props)
        this.state = {
            toggle: false,
            pageCount: 10,
            houseList:[],
            activePage: 1,
            limit: 20,
            offset: 0,
            center: {
                lat: -33.86515,
                lng: 151.1919
              },
            zoom: 14
        }
    }

    componentDidMount() {
        this.loadDataFromServer();
    }

    loadDataFromServer() {
        const values = queryString.parse(this.props.location.search)
        console.log(values.query)

        const offset = this.state.offset + this.state.limit
        const limit = this.state.limit
        axios.get(`http://13.211.203.224/comp9900/house?city=Sydney&limit=${limit}&offset=${offset}`)
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success

                    let propertyList = res.data.data.map((x,i) =>
                        ({...x, isShow: false})
                    )

                    let firstProperty = res.data.data[0]
                    this.setState({
                        houseList: propertyList,
                        limit: limit,
                        offset: offset,
                        center: {lat: firstProperty.lat, lng: firstProperty.lng}
                    })
                } else {
                    console.log('error')
                }
        })
    }

    mapToggled = (e) => {
        console.log('toggle: ', this.state.toggle );
        this.setState({toggle: !this.state.toggle});
    }

    // shouldComponentUpdate() {
    //     return true;
    // }

    onChildClickCallback = (key) => {
        this.setState((state) => {
          const index = state.houseList.findIndex(e => e.houseId == key);
          {state.houseList.map((x, i) =>
            x.isShow = false
          )}
          state.houseList[index].isShow = !state.houseList[index].isShow;
          return { houseList: state.houseList };
        });
    };

    handlePageClick = data => {
        let selected = data.selected;
        let offset = Math.ceil(selected * this.state.limit);
        console.log(`active page is ${selected}`);
        this.setState({activePage: selected, offset: offset}, ()=> {
            this.loadDataFromServer();
        });
    }

    render() {
        // console.log('PROPS: ', this.props);
        return (
            <div>
            <SearchHeader />
            <FilterBar mapCheck={e => this.mapToggled(e)}/>
            {this.state.toggle ? (<Box>
                <Text pl={50} py={20} textAlign='left' fontSize='25px' fontWeight='500' color='#555555'> 
                    300+ Results
                </Text>
                <GridBox w={1} m='0 auto'>
                    {this.state.houseList.map((x, i) =>
                        <PropertyCard data={x} />
                    )}
                </GridBox>
            </Box>)
            : (<Container>
            <List width={1/2} pl={5} pr={2} flexDirection="column">
                {this.state.houseList.map((x, i) =>
                    <ListCard data={x} />
                )}
            </List>
                <MapWrapper width={1/2}>
                    <GoogleMapReact
                            options={{
                                styles: customMapStyle,
                            }}
                        bootstrapURLKeys={{ key: "AIzaSyDLeo51fXjH1cJmOtmNjfDR29mxKOMMsKk"}}
                        defaultCenter={this.state.center}
                        defaultZoom={this.state.zoom}
                        onChildClick={this.onChildClickCallback}
                        >
                            {this.state.houseList.map((x, i) =>
                            <MapDot
                                key={x.houseId}
                                lat={x.lat}
                                lng={x.lng}
                                text="My Marker"
                                data={x}
                            />
                        )}
                    </GoogleMapReact>
                </MapWrapper>
            </Container>)} 

            <Flex textAlign="center" m="0 auto" justifyContent="center">
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
                </Flex>
            <Footer />
        </div>
        )
    }
}
  
  const mapStateToProps = state => ({
    toggle: state.toggle
  });


export default connect(mapStateToProps, null)(Search);

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