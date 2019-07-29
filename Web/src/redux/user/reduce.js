import { LOGIN_SUCCESS } from "./constants";
import { LOGOUT } from "./constants";
import { ERROR_MSG } from "./constants";

const defaultState = {
    isAuth:false,
    errorMsg:'',
    username:'test123',
    role:'',
    email:'',
    address:'',
    jwt:'',
    userId:'',
    clientName:'',
    details:'',
    picUrl:'https://iupac.org/wp-content/uploads/2018/05/default-avatar.png',
    selfIntro:'',
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