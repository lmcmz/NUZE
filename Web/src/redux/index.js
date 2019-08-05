import { createStore, applyMiddleware, combineReducers } from 'redux'
import thunk from 'redux-thunk'
import userReducer  from './user'
import { saveState, loadState} from './storage/localStorage'
import throttle from 'lodash.throttle';

const reducer = combineReducers({
    user:userReducer,
})

const presistedState = loadState();
const store = createStore(reducer, presistedState, applyMiddleware(thunk))
store.subscribe(throttle(() => {
    saveState({
        user: store.getState().user
    });
}, 1000));

export default store