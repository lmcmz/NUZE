import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Box, Card, Image, Heading, Text, Flex, Button } from 'rebass';
import styled from 'styled-components'
import Toggle from 'react-toggle'
import "react-toggle/style.css"
import './FilterBar.css'
import {toggle} from '../../redux/actions';
import { connect } from 'react-redux';
import Slider, { Range } from 'rc-slider';
import 'rc-slider/assets/index.css';
import Tooltip from 'rc-tooltip';

const Handle = Slider.Handle;

const FilterBarDiv = styled.div`
    width: 100%;
    padding-top: 90px;
    padding-left: 40px;
    padding-right: 40px;
    height: 60px;
    /* vertical-align: baseline; */
    border-bottom: 0.5px solid #eee;
    display: flex;
`

const FilterButton = styled(Button)({
    backgroundColor: '#fff',
    color: '#444',
    border: '1px solid #DBDFE2',
    padding: '10px 20px',
    margin: '10px 20px',
    outline: 'none',
    cursor: 'pointer',
    fontSize: '13px',
    width: '120px',
})

const RangeContainer = styled(Box)({
    width: "160px",
})

// const MapToggle = styled(Flex)({
// })

const handle = (props) => {
    const { value, dragging, index, ...restProps } = props;
    return (
      <Tooltip
        prefixCls="rc-slider-tooltip"
        overlay={value}
        visible={dragging}
        placement="top"
        key={index}
        zIndex="10000"
      >
        <Handle value={value} {...restProps} />
      </Tooltip>
    );
  };

class FilterBar extends Component {
    constructor(props) {
        super(props)
        this.state = {
            value: true,
            defaultChecked: true,
            price: 100,
            guest: 2,
        }
    }

    handleBaconChange = (e) => {
        console.log('toggle: ', e.target.checked);
        console.log('PROPS: ', this.props)
        this.props.dispatch(toggle(e.target.checked));
    }

    render() {
        return (
            <FilterBarDiv>
                <Flex alignItems="center" width={2/3}>
                    <FilterButton>Price: ${this.props.searchPrice}</FilterButton>
                    <RangeContainer>
                        <Slider defaultValue={this.state.price} min={0} max={500} handle={handle} onAfterChange={(v) => this.props.changePrice(v)} />
                    </RangeContainer>
                    <FilterButton>Guest: {this.props.searchGuests}</FilterButton>
                    <RangeContainer>
                        <Slider defaultValue={this.state.guest} min={1} max={5} handle={handle} onAfterChange={(v) => this.props.changeGuest(v)}/>
                    </RangeContainer>
                </Flex>
                <Flex width={1/3} pr='100px' justifyContent='flex-end' alignItems='center'>
                    <Text fontSize='13px' pr='5px'>Map View</Text>
                    <label >
                        <Toggle
                            className='map-toggle'
                            // checked={this.state.toggle}
                            defaultChecked={this.state.defaultChecked}
                            onChange={this.props.mapCheck} />
                    </label>
                </Flex>
            </FilterBarDiv>
        )
    }
}
  
//   const mapDispatchToProps = (dispatch, ownProps) => ({
//     onClick: () => dispatch(toggle(ownProps.filter))
//   })

// export default connect(mapDispatchToProps)(FilterBar)

export default FilterBar