import axios from 'axios'
import { LOGIN_SUCCESS } from "./constants";
import { LOGOUT } from "./constants";
import { ERROR_MSG } from "./constants";

function loginSuccess(data) {
    return {type:LOGIN_SUCCESS, payload:data}
}

function errorMsg(msg) {
    return {msg, type:ERROR_MSG}
}

export function userLogin(username, password, userGroup) {
    //TODO validation
    if(!username) {
        return dispatch=>dispatch(errorMsg('Username should not be empty'))
    }
    if(!password) {
        return dispatch=>dispatch(errorMsg('Password should not be empty'))
    }
    return dispatch=>{
        axios.post('http://13.211.203.224/comp9900/login', {username, password, userGroup})
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    console.log('----------------')
                    console.log(res.data)
                    // dispatch(loginSuccess(res.data))
                    let jwt = res.data.data
                    axios.get('http://13.211.203.224/comp9900/users', { headers: { Authorization: jwt } })
                        .then(res=>{
                            if (res.status === 200 && res.data.code === 1) {
                                // success
                                console.log('login')
                                // return res.data
                                let userInfo = res.data.data
                                userInfo.jwt = jwt
                                dispatch(loginSuccess(userInfo))

                            } else {
                                // dispatch(errorMsg(res.data.error))
                            }
                        })

                } else {
                    dispatch(errorMsg(res.data.error))
                }
            })
    }
}

export function getUserInfo(JWT) {
    console.log(JWT)
    //TODO get user info
    return dispatch=>{
        axios.get('http://13.211.203.224/comp9900/users', { headers: { Authorization: JWT } })
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    // console.log('login')
                    return res.data
                    // dispatch(loginSuccess(res.data))

                } else {
                    // dispatch(errorMsg(res.data.error))
                }
            })
    }
}

export function userRegister(username, password) {
    return dispatch=>{
        axios.post('http://13.211.203.224/comp9900/users', {username, password, type: 0})
            .then(res=>{
                if (res.status === 200 && res.data.code === 1) {
                    // success
                    axios.post('http://13.211.203.224/comp9900/login', {username, password, userGroup: 0})
                        .then(res=>{
                            if (res.status === 200 && res.data.code === 1) {
                                // success
                                // dispatch(loginSuccess(res.data))
                                let jwt = res.data.data
                                axios.get('http://13.211.203.224/comp9900/users', { headers: { Authorization: jwt } })
                                    .then(res=>{
                                        if (res.status === 200 && res.data.code === 1) {
                                            // success
                                            // return res.data
                                            let userInfo = res.data.data
                                            userInfo.jwt = jwt
                                            dispatch(loginSuccess(userInfo))

                                        } else {
                                            // dispatch(errorMsg(res.data.error))
                                        }
                                    })

                            } else {
                                dispatch(errorMsg(res.data.error))
                            }
                        })

                } else {
                    // dispatch(errorMsg(res.data.error))
                }
            })
    }
}