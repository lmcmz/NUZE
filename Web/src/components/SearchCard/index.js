import React, { Component } from 'react'
import { Box, Card, Image, Heading, Text, Flex } from 'rebass';
import { DateRangePicker } from 'react-dates';
import 'react-dates/initialize';
import styled, { keyframes }from 'styled-components'
import 'react-dates/lib/css/_datepicker.css';
import './SearchCard.css'
import { faSearch } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import Dropdown from 'react-dropdown';
import 'react-dropdown/style.css';


const ColorText = styled.span`
    align-self: flex-end;
    background: linear-gradient(104deg, #60B3DB 20%, #FF6565 50%,  #FFD000 100%);
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    text-align: right;
`

const DestinationInput = styled.input`
    width: 100%;
    height: 50px;
    border:none;
    border-radius: 5px;
    background-color : rgba( 0, 0, 0, 0.05);
    padding-left: 0.5em;
    font-size: 22px;
    outline: none;

    &::-webkit-input-placeholder {
        color: rgb(163, 163, 163);;
        font-size: 22px;
    }
`

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

const DateInput = styled.div`
    width: 100%;
    height: 50px;
    border:none;
    border-radius: 3px;
    background-color : rgba( 0, 0, 0, 0.05);
    padding-left: 0.5em;
    font-size: 25px;
    outline: none;

    &::-webkit-input-placeholder {
        color: lightgrey;
        font-size: 25px;
    }
`

const SearchButton = styled.button`
    width: 100%;
    height: 60px;
    border-radius: 8px;
    border: none;
    /* background: linear-gradient(to right, #FF6565 0%, #FF6565 100%);; */
    background: linear-gradient(-45deg, #FFA63D, #FF3D77, #338AFF, #3CF0C5);
    background-size: 600%;
    animation: ${anime} 16s linear infinite;
    color: white;
    font-size: 2em;
    font-weight: 500;
    transition: 1s cubic-bezier(0.2, 0.8, 0.2, 1);
    outline: none;
    cursor: pointer;

    &:hover {
        
    }
`

const SearchBox = styled(Box)({
    width: "550px",
})

const cityList = [
    "Sydney",
    "Newcastle",
    "Wollongong",
    "CentralCoast",
    "Albury",
    "Armidale",
    "Bathurst",
    "BrokenHill",
    "CityofLakeMacquarie",
    "CoffsHarbour‎",
    "Dubbo",
    "Goulburn",
    "Grafton",
    "Griffith",
    "Lithgow",
    "Maitland",
    "Parramatta",
    "Penrith",
    "BotanyBay",
    "Queanbeyan",
    "CityofShoalhaven‎",
    "Tamworth",
    "Taree",
    "TweedHeads",
    "WaggaWagga"
    ]

export class SearchCard extends Component {
    constructor(props) {
        super(props)
        this.state = {
            query: 'kiama',
            startDate: null,
            endDate:null,
            focusedInput: null,
        }
      }

      resetThenSet = (id, key) => {
        let temp = JSON.parse(JSON.stringify(this.state[key]));
        temp.forEach(item => item.selected = false);
        temp[id].selected = true;
        this.setState({
          [key]: temp
        });
      }

      handleSearch = () => {
        window.location.assign('/search');
        // window.location.assign('/search?'+this.state.query);
      }

      handleTextChange = () => {

      }

    render() {

        const options = [1,2,3,4]
        // Array(5).fill();
        const defaultOption = 1;

        return (
            <SearchBox>
                <Card
                    p={20}
                    borderRadius={8}
                    borderColor='#eee'
                    borderWidth={1}
                    borderStyle='solid'>
                    <Box px={2}>
                    <Heading as='h3' textAlign='start' color='#555555' fontSize={35}>
                        Start exploring in <ColorText>NSW</ColorText>
                    </Heading>
                    <Box pt={2} pb={2}>
                        <Text fontSize={15} textAlign='start' lineHeight={1}>
                            Offering 1000+ holiday units.
                        </Text>
                    </Box>
                    <Flex flexDirection='column' textAlign='left' alignItems='flex-start'>
                        <Text fontSize={1} color='grey' lineHeight={3}>Destination</Text>
                        <Box width={1}>
                            <DestinationInput onChange={this.handleTextChange.bind(this)} type="text" name="destination" placeholder="Kiama"></DestinationInput>
                        </Box>
                    </Flex>

                    <Box pt={2} pb={2} >
                        <Flex flexDirection='column' textAlign='left' alignItems='flex-start'>
                            <Text fontSize={1} color='grey' lineHeight={3}>Date</Text>
                            <Flex width={1} style={{overflow:"hiden"}}>
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
                        </Flex>
                    </Box>
                    
                    <Box pt={2} pb={2} >
                        <Flex flexDirection='column' textAlign='left' alignItems='flex-start'>
                            <Text fontSize={1} color='grey' lineHeight={3}>Guest</Text>
                            <Flex  justifyContent='space-between' width={1}>
                                <Dropdown className="dropdownWrapper" 
                                    controlClassName='dropdown'
                                    arrowClassName='dropdownArrow'
                                    menuClassName='dropdownMenu'
                                    options={options} 
                                    placeholder="Rooms" 
                                     />
                                <Dropdown className="dropdownWrapper" 
                                    controlClassName='dropdown'
                                    arrowClassName='dropdownArrow'
                                    menuClassName='dropdownMenu'
                                    
                                    options={options}
                                    placeholder="Guest" />
                            </Flex>
                        </Flex>
                    </Box>

                    <Box pt={4} pb={4} >
                        {/* <Box bg='red' height='50px'> Serach</Box>
                     */}
                        <SearchButton onClick={this.handleSearch}> <FontAwesomeIcon icon={faSearch} size='xs'/>  Search </SearchButton>
                    </Box>
                    
                    </Box>
                </Card>
            </SearchBox>
        )
    }
}

export default SearchCard
