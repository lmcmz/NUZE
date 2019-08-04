import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Button, Card, Image, Heading, Text, Flex } from 'rebass';
import PropertyList from '../../components/PropertyList';
import ReviewInputCard from '../Review/ReviewInput';
import axios from "axios";
import {userLogin} from "../../redux/user/actions";
import connect from "react-redux/es/connect/connect";

class ReviewList extends Component {
    static propTypes = {
        prop: PropTypes
    }

    constructor(props) {
        super(props);
        this.state = {
            waitForReview:[],
            historyReview:[],
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
                    this.setState({
                        waitForReview: res.data.data.bookings,
                        historyReview: res.data.data.preBookings
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
                    Waiting For Review
                </Text>

                {this.state.waitForReview.map((x, i) =>{
                    return x.isreview ? null : <ReviewInputCard data={x} />
                })}


                <Text pl={160} py={20} textAlign='left' fontSize='30px' fontWeight='600' color='#555555'> 
                    History Reviews
                </Text>
{/* 
                {this.state.historyReview.map((x, i) =>{
                    return x.isreview ?  : null
                })} */}

                <PropertyList data={this.state.historyReview}></PropertyList>

            </div>
        )
    }
}

const mapStateToProps = (state)=>({
    user:state.user
})
const actionCreators = { userLogin };
export default connect(mapStateToProps, actionCreators)(ReviewList)