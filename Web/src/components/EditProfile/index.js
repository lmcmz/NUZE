import React, { Component } from 'react'
import PropTypes from 'prop-types'
import axios from 'axios'
import { Box, Button, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import {userLogin, getUserInfo} from "../../redux/user/actions";
import connect from "react-redux/es/connect/connect";
import Simplert from 'react-simplert'
import ImageUploader from 'react-images-upload';

const InfoCard = styled(Card)({
    width: "700px",
    overflow: "hidden",
})

const Title = styled(Text)({
    marginRight:"20px",
    fontSize:"17px",
    textAlign:"center",
    width: "100px;"
})

const Avatar = styled(Image)({
    height: "100px",
    width: "100px",
    borderRadius: "50px",
    objectFit: 'cover',
    border: '1px solid #e5e5e5'
})

const Input = styled.input`
    width: 70%;
    height: 40px;
    border:none;
    border-radius: 3px;
    background-color : rgba( 0, 0, 0, 0.05);
    padding-left: 0.5em;
    font-size: 18px;
    outline: none;

    &::-webkit-input-placeholder {
        color: rgb(163, 163, 163);;
        font-size: 18px;
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
    }
`


class EditProfile extends Component {

    constructor(props) {
        super(props);
        this.onDrop = this.onDrop.bind(this);
        this.state = {
            firstName:'',
            lastName:'',
            detail: '',
            selfInfo: '',
            showAlert: false,
            showError: false,
            picture: null
        }
    }

    updateUserInfo(){
        let name = this.state.lastName + ' ' + this.state.firstName
        let details = this.state.detail
        let selfInfo = this.state.selfInfo
        let picture = this.state.picture? this.state.picture[0] : null
        let bodyFormData = new FormData();
        bodyFormData.set('name', name);
        bodyFormData.set('details', details);
        bodyFormData.set('selfInfo', selfInfo);
        if (picture)
        bodyFormData.set('picture', picture);

        let jwt = this.props.user.jwt
        axios.post('http://13.211.203.224/comp9900/users/info', bodyFormData, { headers: { 'Authorization': jwt, 'Content-Type':'multipart/form-data'}})
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    // return res.data
                    this.setState({
                        showAlert: true
                    })
                    setTimeout(() => {
                        this.props.getUserInfo(jwt)
                    },1000)
                } else {
                    // dispatch(errorMsg(res.data.error))
                    this.setState({
                        showError: true
                    })
                }
            })

    }

    handleChange(key, e) {
        this.setState({
            [key]: e.target.value
        })
    }

    onDrop(pictureFiles, pictureDataURLs) {
        this.setState({
            picture: pictureFiles,
        });
    }

    render() {
        var name = this.props.user.clientName.split(" ")
        return (
            <Box>
                <Simplert 
                showSimplert={ this.state.showAlert }
                type="success"
                title="Update Suceess"
                message="Your detail have been updated"
                />

                <Simplert 
                showSimplert={ this.state.showError }
                type="error"
                title="Error"
                message="Update Info Failed"
                />
                
                <Text pl={160} py={20} textAlign='left' fontSize='30px' fontWeight='600' color='#555555'> 
                    My Profile
                </Text>
                <Box width={4/5} pl="160px" overflow="scroll">
                    <InfoCard 
                        mb="50px" 
                        borderRadius="10px"
                        border="1px solid #e5e5e5"
                        boxShadow='0 0 16px rgba(0, 0, 0, .25)'>
                        <Flex bg="#60B3DB" py="20px" borderRadius="10px">
                            <Text pl="50px" fontSize="18px" color="white" fontWeight="600"> Required </Text>
                        </Flex>

                        <Flex pl="50px" py="15px" textAlign="center" >
                            <Avatar src={this.props.user.picUrl} />
                            <ImageUploader
                                withIcon={false}
                                buttonText='Choose images'
                                onChange={this.onDrop}
                                imgExtension={['.jpg', '.gif', '.png', '.gif']}
                                maxFileSize={5242880}
                                withPreview={true}
                            />
                        </Flex>

                        <Flex py="15px" textAlign="center"  alignItems="center" justifyContent="center">
                            <Title fontSize="17px"> First Name </Title>
                            <Input
                                onChange={v=>this.handleChange('firstName',v)}
                                type="text" name="firstName" defaultValue={name[0]} placeholder="First Name"></Input>
                        </Flex>
                        <Flex py="15px" textAlign="center"  alignItems="center" justifyContent="center">
                            <Title fontSize="17px"> Last Name </Title>
                            <Input
                                onChange={v=>this.handleChange('lastName',v)}
                                type="text" text={name[1]} name="LastName" defaultValue={name[1]} placeholder="Last Name"></Input>
                        </Flex>
                        <Flex py="15px" textAlign="center"  alignItems="center" justifyContent="center">
                            <Title fontSize="17px">Detail</Title>
                            <Input
                                onChange={v=>this.handleChange('detail',v)}
                                type="text" name="firstName" placeholder="Detail" defaultValue={this.props.user.details}></Input>
                        </Flex>
                        {/*<Flex py="15px" textAlign="center"  alignItems="center" justifyContent="center">*/}
                            {/*<Title fontSize="17px"> Where do you live </Title>*/}
                            {/*<Input type="text" name="firstName" placeholder="Addess"></Input>*/}
                        {/*</Flex>*/}
                        <Flex py="15px" textAlign="center"  alignItems="flex-start" justifyContent="center">
                            <Title fontSize="17px"> SelfInfo </Title>
                            <DescInput
                                onChange={v=>this.handleChange('selfInfo',v)}
                                type="text" name="firstName" placeholder="SelfInfo" defaultValue={this.props.user.selfIntro} ></DescInput>
                        </Flex>
                    </InfoCard>
                    <InfoCard  
                        borderRadius="10px"
                        border="1px solid #e5e5e5"
                        boxShadow='0 0 16px rgba(0, 0, 0, .25)'>
                       <Flex bg="#FFD000" py="20px" borderRadius="10px">
                            <Text pl="50px" fontSize="18px" color="white" fontWeight="600"> Optional </Text>
                        </Flex>
                        <Flex py="10px" textAlign="center"  alignItems="center" justifyContent="center">
                            <Title fontSize="17px"> School </Title>
                            <Input type="text" name="firstName" placeholder="School"></Input>
                        </Flex>
                        <Flex py="10px" textAlign="center"  alignItems="center" justifyContent="center">
                            <Title fontSize="17px"> Work </Title>
                            <Input type="text" name="firstName" placeholder="Work"></Input>
                        </Flex>
                        <Flex py="10px" textAlign="center"  alignItems="center" justifyContent="center">
                            <Title fontSize="17px"> Work Email </Title>
                            <Input type="text" name="firstName" placeholder="Work Email"></Input>
                        </Flex>
                    </InfoCard>
                    <Button bg="#60B3DB" width="150px" mt="30px" mb="50px" styled={{cursor:'pointer'}} onClick={() => this.updateUserInfo()}>Submit</Button>
                </Box>
            </Box>
        )
    }
}

const mapStateToProps = (state)=>({
    user:state.user
})
const actionCreators = { userLogin, getUserInfo };
export default connect(mapStateToProps, actionCreators)(EditProfile)