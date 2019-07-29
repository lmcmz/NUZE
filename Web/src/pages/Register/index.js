import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Button, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import { faTimes } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {Link} from 'react-router-dom'
import {connect} from 'react-redux'
import {userRegister} from '../../redux/user/actions'

const BackgroundBox = styled(Card)({
    height:"550px",
    width:"600px",
    margin: "0 auto",
    borderRadius: "10px",
    padding: "20px",
    // alignItems:"center",
})

const LogoBox = styled(Box)({
    textAlign: "center"
})

const LoginButton = styled(Button)({
    height: "55px",
    fontSize: "20px",
    width: "100%",
    borderRadius: "8px",
    cursor: "pointer",
    transition: '0.8s cubic-bezier(0.2, 0.8, 0.2, 1)',

    '&:hover': {
        boxShadow: "rgba(96, 179, 219, 0.5) 0px 20px 40px",
        transform: "translateY(-3px)",
    }
})

const DestinationInput = styled.input`
    width: 100%;
    height: 50px;
    border:none;
    border-radius: 8px;
    background-color : rgba( 0, 0, 0, 0.05);
    padding-left: 0.5em;
    font-size: 22px;
    outline: none;

    &::-webkit-input-placeholder {
        color: rgb(163, 163, 163);;
        font-size: 20px;
    }
`

const CloseButton = styled(Button)({
    backgroundColor: "#fff",
    color:"#60B3DB",
    alignSelf: "flex-end",
    position: "relative",
    top: "10px",
    right: "10px",
    outline: "none",
    cursor: "pointer",
})

class RegisterAlert extends Component {
    static propTypes = {
        prop: PropTypes
    }

    constructor(props) {
        super(props);
        this.state = {
            username:'',
            password:''
        }
    }



    Register() {
        console.log("login")
        let username = this.state.username
        let password = this.state.password
        console.log(username, password)
        this.props.userRegister(username, password, 0)
    }

    handleChange(key, e) {
        this.setState({
            [key]: e.target.value
        })
    }

    render() {
        return (
            <BackgroundBox bg="#fff" boxShadow='0 0 16px rgba(96, 179, 219, .5)'>
                <Flex justifyContent="flex-end">
                    <CloseButton onClick={this.props.close} ><FontAwesomeIcon icon={faTimes} size='2x'/></CloseButton>
                </Flex>
                <LogoBox m="0 auto" justifyContent="center">
                    <img src={require('../../resource/image/logo-only.svg')} width="50" />
                    {/* <Text pl={3} textAlign="center" fontSize="40px" fontWeight="400" fontFamily="Avenir Next">Sign in</Text> */}
                </LogoBox> 
                
                <Box width={0.8} py={1} m="0 auto">
                    <Text py={2} fontSize="15px">Username</Text>
                    <DestinationInput
                        onChange={v=>this.handleChange('username',v)}
                        type="text" name="destination" placeholder="username"></DestinationInput>
                </Box>

                <Box width={0.8} py={1} m="0 auto">
                    <Text py={2} fontSize="15px">Email</Text>
                    <DestinationInput
                        onChange={v=>this.handleChange('email',v)}
                        type="text" name="destination" placeholder="email address"></DestinationInput>
                </Box>
                <Box width={0.8} py={1}  m="0 auto">
                    <Text py={2} fontSize="15px">Password</Text>
                    <DestinationInput
                        onChange={v=>this.handleChange('password',v)}
                        type="text" name="destination" placeholder="password"></DestinationInput>
                </Box>
                <Box width={0.8} pt={4} m="0 auto">
                    <LoginButton onClick={() => this.Register()} bg="#60B3DB" alignSelf="center" justifyContent="center">Sign up</LoginButton>
                </Box>
                <Box width={0.8} pt={4} m="0 auto">
                    <Link to="/">
                    <Text textAlign="center" color="#FF6565" fontSize="15px" fontFamily="Avenir Next" >Already have a member? Sign in</Text>
                    </Link>
                </Box>
            </BackgroundBox>
        )
    }
}

const mapStateToProps = (state)=>({
    user:state.user
})
const actionCreators = { userRegister };
export default connect(mapStateToProps, actionCreators)(RegisterAlert)