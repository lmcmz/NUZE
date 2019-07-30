import React, { Component } from 'react'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import RecommandCard from './RecommandCard';
import ScrollMenu from "react-horizontal-scrolling-menu";
import './Recommand.css'
import { faChevronRight,faChevronLeft } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import data from "../../resource/json/city.json";
import axios from 'axios'

const ColorTextBlue = styled.span`
    align-self: flex-end;
    background: #60B3DB;
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    text-align: right;
    margin:0;
    font-weight:600;
`

const ColorTextRed = styled.span`
    align-self: flex-end;
    background: #FF6565;
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    text-align: right;
    margin:0;
    font-weight:600;
`

const ColorTextYellow = styled.span`
    align-self: flex-end;
    background: #FFD000;
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    text-align: right;
    margin:0;
    font-weight:600;
`

const RecommandScrollView = styled(Flex)({
    display: 'flex',
    overflowX: 'scroll',
    overflowY: 'hidden'
})
   
  // All items component
  // Important! add unique key
   
  const Arrow = ({ text, className }) => {
    return (
      <div
        className={className}
      >
          <Text><FontAwesomeIcon icon={text=='>'? faChevronRight : faChevronLeft} size='xs'/></Text>
      </div>
    );
  };
   
  
const ArrowLeft = Arrow({ text: '<', className: 'arrow-prev' });
const ArrowRight = Arrow({ text: '>', className: 'arrow-next' });
const selected = 'item1';

export class Recommand extends Component {
    constructor(props) {
        super(props);
      }
     
      state = {
        selected,
        cityList: data
    };

    // componentDidMount() {
    //   this.loadCity()
    // }

    // loadCity() {
    //   console.log(data)

    //   // axios.get('../../resource/json/city.json')
    //   // fetch('../../resource/json/city.json')
    //   // .then(res=>{
    //   //   console.log(res)
    //   //   this.setState({cityList: res})
    //   // })
    // }

     
    render() {
        const menu = [];
        data.map(x => {
           menu.push(<RecommandCard data={x} />);
        })

        return (
            <Box>
                <Text pl={160} py={20} textAlign='left' fontSize='30px' fontWeight='500' color='#555555'> 
                    {/* <ColorTextBlue>R</ColorTextBlue>ecommend <ColorTextRed>F</ColorTextRed>or <ColorTextYellow>Y</ColorTextYellow>ou  */}
                    Recommand for you
                </Text>

                <Box width={0.9} m='0 auto'>
                    <ScrollMenu
                    data={menu}
                    arrowLeft={ArrowLeft}
                    arrowRight={ArrowRight}
                    // selected={this.selected}
                    // onSelect={this.onSelect}
                    dragging={true}
                    wheel={true}
                    clickWhenDrag={true}
                    />
                </Box>
            </Box>
        )
    }
}

export default Recommand