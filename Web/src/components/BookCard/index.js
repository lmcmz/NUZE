import React, { Component } from 'react'
import PropTypes from 'prop-types'
import axios from 'axios'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled, { keyframes } from 'styled-components';
import {Link, withRouter, Redirect} from 'react-router-dom'
import { DateRangePicker, DayPickerRangeController } from 'react-dates';
import Dropdown from 'react-dropdown';
import { faStar, faStarHalfAlt } from "@fortawesome/free-solid-svg-icons";
import { faStar as emStar } from "@fortawesome/free-regular-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import Web3 from 'web3';
import {userLogin} from "../../redux/user/actions";
import connect from "react-redux/es/connect/connect";
import moment from 'moment';
import Simplert from 'react-simplert'

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

const SearchButton = styled.button`
    width: 100%;
    height: 70px;
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

class BookCard extends Component {
    constructor(props){
        super(props);
        this.state = {
            startDate: moment(new Date()),
            endDate: moment(new Date()).add(1, 'days'),
            guests:1,
            showAlert: false,
            showError: false,
            errorMessage: "MetaMask not install",
            paymentComplete: false
        };
    }

    starRendering = () => {

        const items = [];
        
        if (this.props.data.starRating == null) {
            return
        }

        let rate = this.props.data.starRating < 0 ? 0 : this.props.data.starRating 
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

    handleChange(key, e) {
        console.log(e)
        this.setState({
            [key]: e.value
        })
    }

    sendTransaction = (acc) => {
        console.log(acc)
        const web3 = new Web3(Web3.givenProvider);

        var receiver = "0x56519083C3cfeAE833B93a93c843C993bE1D74EA"  
        web3.eth.sendTransaction({to:receiver,
            from: acc, 
            value:web3.utils.toWei("0.01", "ether")})
        .then(function (error, res) {
            console.log('error', error);
            console.log('BBBB', res);
            this.sendBookRequest()
        }.bind(this))
    }

    handleBook = () => {

        const web3 = new Web3(Web3.givenProvider);
        if (web3.currentProvider === null) {
            this.setState({
                showError: true
            })
            return
        }
        console.log("-------Web3---------")
        
        var firstAcc = ""
        var sender = web3.eth.getAccounts().then(e =>{ 
            firstAcc=e[0];
            if (firstAcc === "") {
                this.setState({
                    showError: true, 
                    errorMessage: "Fail to get Addess"
                })
            }
            console.log(firstAcc)
            this.sendTransaction(firstAcc)
        })
    }

    sendBookRequest() {
        console.log(this.props.data)
        let houseId = this.props.data.houseId
        let adults = this.state.guests
        let checkIn = this.state.startDate.toDate().getTime()
        let checkOut = this.state.endDate.toDate().getTime()
        let data = {adults, checkIn, checkOut}
        console.log(data)
        let jwt = this.props.user.jwt
        axios.post(`http://13.211.203.224/comp9900/house/${houseId}/book`, data, { headers: { 'Authorization': jwt, 'Content-Type':'application/json'}})
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    // this.renderSwitch(this.state.selectedId)
                    console.log(res.data)
                    this.setState({
                        showAlert: true,
                    })
                } else {
                    console.log('error')
                }
            })
    }

    handleRedirect() {
        this.setState({
            paymentComplete: true
        })
    }

    render() {
        var moment = require('moment');
        const options = [1,2,3,4]

        var web3 = new Web3(Web3.givenProvider || "ws://localhost:8546");
        console.log(web3)

        return (
            <div>
                {this.state.paymentComplete? <Redirect to={"/profile"}/> : null}
            <Simplert 
                showSimplert={ this.state.showAlert }
                type="success"
                title="Book Success"
                message="Redirect to your trip page"
                onClose={this.handleRedirect.bind(this)}
                />

                <Simplert 
                showSimplert={ this.state.showError }
                type="error"
                title={this.state.errorMessage}
                message="You need MetaMask to complete your order"
                />

                <Card border="1px solid #eee" p={3} borderRadius={10}>
                    <Flex>
                        <Text fontSize="30px" fontWeight="500">${this.props.data.price} <span fontSize="5px" fontWeight="200"> total</span> </Text>  
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
                            <Dropdown className="dropdownWrapper-deatil"
                                        value={this.state.guests+ ""}
                                        onChange={v=>this.handleChange('guests',v)}
                                        controlClassName='dropdown'
                                        arrowClassName='dropdownArrow'
                                        menuClassName='dropdownMenu'
                                        options={options} 
                                        placeholder="Guest"
                                        defaultOption={1}
                            />
                            </Flex>
                        </Flex>
                    </Box>
                    {this.props.user.isAuth ?
                        <SearchButton onClick={this.handleBook}> Book </SearchButton>
                    :
                        <Link to={'/login'}>
                            <SearchButton> Book </SearchButton>
                        </Link>
                    }
                </Card>
            </div>
        )
    }
}
const mapStateToProps = (state)=>({
    user:state.user
})
const actionCreators = { userLogin };
export default connect(mapStateToProps, actionCreators)(BookCard)