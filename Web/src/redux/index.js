import { createStore, applyMiddleware, combineReducers } from 'redux'
import thunk from 'redux-thunk'
import userReducer  from './user'

const reducer = combineReducers({
    user:userReducer,
})
const store = createStore(reducer, applyMiddleware(thunk))
export default store