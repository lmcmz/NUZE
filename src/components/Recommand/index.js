import React, { Component } from 'react'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import styled from 'styled-components'
import RecommandCard from './RecommandCard';
import ScrollMenu from "react-horizontal-scrolling-menu";
import './Recommand.css'
import { faChevronRight,faChevronLeft } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

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


const list = [
    { name: 'item1' },
    { name: 'item2' },
    { name: 'item3' },
    { name: 'item4' },
    { name: 'item5' },
    { name: 'item6' },
    { name: 'item7' },
    { name: 'item8' },
    { name: 'item9' }
  ];
   
const randomImage = () => {
    return "https://source.unsplash.com/random?sig="+ Math.floor(Math.random() * Math.floor(1000)) +"/720x1280";
};

  // One item component
  // selected prop will be passed
  const MenuItem = ({text, selected}) => {
    return <RecommandCard image= {randomImage()}></RecommandCard>;
  };
   
  // All items component
  // Important! add unique key
  export const Menu = (list, selected) =>
    list.map(el => {
      const {name} = el;
   
      return <MenuItem text={name} key={name} selected={selected} />;
    });

   
  const Arrow = ({ text, className }) => {
    return (
      <div
        className={className}
      >
          <Text><FontAwesomeIcon icon={text=='>'? faChevronRight : faChevronLeft} size='s'/></Text>
      </div>
    );
  };
   
   
const ArrowLeft = Arrow({ text: '<', className: 'arrow-prev' });
const ArrowRight = Arrow({ text: '>', className: 'arrow-next' });
const selected = 'item1';

export class Recommand extends Component {
    constructor(props) {
        super(props);
        // call it again if items count changes
        this.menuItems = Menu(list, selected);
      }
     
      state = {
        selected
    };
     
    onSelect = key => {
    this.setState({ selected: key });
    }

    render() {
        const { selected } = this.state;
        // Create menu from items
        const menu = this.menuItems;

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
                    selected={this.selected}
                    onSelect={this.onSelect}
                    // dragging={false}
                    // wheel={false}
                    />
                </Box>
            </Box>
        )
    }
}

export default Recommand