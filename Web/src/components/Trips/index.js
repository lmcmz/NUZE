import React, { Component } from 'react'
import PropTypes from 'prop-types'
import axios from 'axios'
import { Box, Button, Card, Image, Heading, Text, Flex } from 'rebass';
import PropertyList from '../../components/PropertyList';
import {userLogin} from "../../redux/user/actions";
import connect from "react-redux/es/connect/connect";

class TripList extends Component {
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
        let jwt = this.props.user.jwt
        axios.get('http://13.211.203.224/comp9900/booking', { headers: { Authorization: jwt } })
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

const mapStateToProps = (state)=>({
    user:state.user
})
const actionCreators = { userLogin };
export default connect(mapStateToProps, actionCreators)(TripList)
