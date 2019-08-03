import React, { Component } from 'react'
import PropTypes from 'prop-types'
import axios from 'axios'
import { Box, Button, Card, Image, Heading, Text, Flex } from 'rebass';
import PropertyList from '../../components/PropertyList';

export default class TripList extends Component {
    static propTypes = {
        prop: PropTypes
    }

    constructor(props) {
        super(props);
        this.state = {
            trip:null,
            pastTrip:null
        }
    }

    componentWillMount() {
        let jwt = "eyJhbGciOiJIUzUxMiJ9.eyJhdXRob3JpdGllcyI6IlJPTEVfQURNSU4sQVVUSF9XUklURSIsInN1YiI6IjU3NTBfY2xpZW50IiwiZXhwIjoxNTY1MTc0ODEzfQ.oG4SGXqsUgxXE3iDXv0zACk09INNXmiucnmA9t_0ZaK14Oo73KflzZcrFyp9X1odKmabNk-drhvZlq53RPX5Rg"
        axios.get('http://localhost:8080/comp9900/booking', { headers: { Authorization: jwt } })
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    console.log('get booking success')
                    console.log(this)
                    console.log(res.data.data.bookings)
                    console.log(res.data.data.preBookings)
                    this.setState({
                        trip:res.data.data.bookings,
                        pastTrip: res.data.data.preBookings
                    })
                } else {
                    // dispatch(errorMsg(res.data.error))
                }
            })
    }


    render() {
        return (
            <div>
                <Text pl={160} py={20} textAlign='left' fontSize='30px' fontWeight='600' color='#555555'> 
                    Upcoming Trips
                </Text>
                {/*{this.state.trip ? <div>{this.state.trip[0].houseId}</div> : null}*/}
                {this.state.trip ? <PropertyList data={this.state.trip}></PropertyList> : null}
                <Text pl={160} py={20} textAlign='left' fontSize='30px' fontWeight='600' color='#555555'>
                    Past Trips
                </Text>
                {this.state.pastTrip ? <PropertyList data={this.state.pastTrip}></PropertyList> : null}
            </div>
        )
    }
}
