import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import Home from './pages/Home/index'
import Header from './components/Header';
import * as serviceWorker from './serviceWorker';
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import Search from './pages/Search';
import Detail from './pages/Detail';
import Profile from './pages/Profile';
import BecameHost from './pages/BecameHost';
import HostForm from './pages/HostForm';

import { createStore } from 'redux'
import { Provider } from 'react-redux'
import store from './redux'

// const store = createStore(rootReducer)

ReactDOM.render(
    <BrowserRouter>
    <Provider store={store}>
        <Switch>
            <Route exact path='/' component={Home}></Route>
            <Route path='/search' component={Search}></Route>
            <Route path='/house/:id' component={Detail}></Route>
            <Route path='/profile' component={Profile}></Route>
            <Route path='/becomeHost' component={BecameHost}></Route>
            <Route path='/hostForm' component={HostForm}></Route>
        </Switch>
    </Provider>
    </BrowserRouter>, 
    document.getElementById('root')
    );

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
