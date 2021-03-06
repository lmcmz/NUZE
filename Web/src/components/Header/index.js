import React, { Component } from 'react'
import {Link} from 'react-router-dom'
import {connect} from 'react-redux'
import './Header.css'
import { Box, Flex, Card, Image, Heading, Text} from 'rebass';
import styled from 'styled-components'
import LoginAlert from '../../pages/Login';
import RegisterAlert from '../../pages/Register';
import Modal from 'react-modal';
import {userLogin} from "../../redux/user/actions";

const HeaderContainer = styled(Flex)({
})

class Header extends React.Component {

    constructor(props) {
        super(props)
        this.state = {
          hasScrolled: false,
          showModal: false,
          isLogin: true
        }

        this.handleOpenModal = this.handleOpenModal.bind(this);
        this.handleCloseModal = this.handleCloseModal.bind(this);
    }

    handleOpenModal (isLogin) {
      this.setState({ showModal: true, isLogin: isLogin });
    }
    
    handleCloseModal () {
      this.setState({ showModal: false });
    }

    componentDidMount() {
        window.addEventListener('scroll', this.handleScroll)
    }
    
    handleScroll = (event) => {
        const scrollTop = window.pageYOffset
    
        if (scrollTop > 50) {
          this.setState({ hasScrolled: true })
        } else {
          this.setState({ hasScrolled: false})
        }
    }

    componentWillUnmount() {
      window.removeEventListener('scroll', () => {} )
    }

    // componentDidUpdate() {
    //   if (this.props.user.isAuth)
    //   this.setState({ showModal: false });
    // }

    render() {
        return (
          <div className={this.state.hasScrolled ? 'Header HeaderScrolled' : 'Header'}>
            <HeaderContainer width={0.75} m="0 auto">
              <Box width={1/2}>
                <Link className='logo' to="/"><img src={require('../../resource/image/logo.svg')} width="120" /></Link> 
              </Box>
              <Flex width={1/2} alignItems='end' justifyContent='flex-end'>
                {/* <Link className='link link0' to="/">Join us</Link> */}
                <Link className='link link1' to="/becomeHost">Become a Host</Link>
                  {this.props.user.isAuth
                  ? <Link to="/profile">
                    <img src={this.props.user.picUrl} style={{ width: '35px', height:'35px', border:'1px solid #e5e5e5' ,borderRadius:'50%', objectFit: 'cover' }} alt=""/>
                  </Link>
                  : <div>
                          <Link className='link link2' onClick={this.handleOpenModal.bind(this, false)}>Register</Link>
                          <Link className='link link3' onClick={this.handleOpenModal.bind(this, true)}>Login</Link>
                      </div>
                  }
                  
              </Flex>
            </HeaderContainer>
            <Modal 
              closeTimeoutMS={200}
              isOpen={this.state.showModal}
              contentLabel="Minimal Modal Example"
              style={{
                overlay: {
                  // position: 'fixed',
                  // top: 0,
                  // left: 0,
                  // right: 0,
                  // bottom: 0,
                  // backgroundColor: 'rgba(255, 255, 255, 0.75)',
                  zIndex: 10000,
                },
                content: {
                  alignItems: 'center',
                  position: 'absolute',
                  border: 'none',
                  background: 'none',
                  overflow: 'auto',
                  WebkitOverflowScrolling: 'touch',
                  display: 'flex'
                  // outline: 'none',
                  // padding: '20px'
                }
              }}
            >

              {this.state.isLogin ? 
                <LoginAlert close={this.handleCloseModal} ></LoginAlert> :
                <RegisterAlert close={this.handleCloseModal}></RegisterAlert>
              }
            </Modal>
          </div>
        )
      }
}
const mapStateToProps = (state)=>({
    user:state.user
})
const actionCreators = { userLogin };
export default connect(mapStateToProps, actionCreators)(Header)
