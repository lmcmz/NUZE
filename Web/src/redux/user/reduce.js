import { LOGIN_SUCCESS } from "./constants";
import { LOGOUT } from "./constants";
import { ERROR_MSG } from "./constants";

const defaultState = {
    isAuth:false,
    errorMsg:'',
    username:'test123',
    role:'12121',
    email:'dhsj',
    address:'1212',
    jwt:'',
    userId:'1231',
    clientName:'AAA BBB',
    details:'ndsaj',
    picUrl:'https://iupac.org/wp-content/uploads/2018/05/default-avatar.png',
    selfIntro:'121',
    joinInyear:''
}
export default (state = defaultState, action) => {
    switch (action.type) {
        case LOGIN_SUCCESS:
            return {
                ...state,
                // ...action.payload,
                ...action.payload,
                isAuth: true,
                errorMsg: '',
            }
        case LOGOUT:
            return {...defaultState}
        case ERROR_MSG:
            return {...state, errorMsg:action.msg}
        default:
            return state
    }
}