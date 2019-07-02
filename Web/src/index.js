import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import Home from './pages/Home/index'
import Header from './components/Header';
import * as serviceWorker from './serviceWorker';
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import Search from './pages/Search';

import { createStore } from 'redux'
import { Provider } from 'react-redux'
import rootReducer from './redux/reducers'

const store = createStore(rootReducer)

ReactDOM.render(
    <BrowserRouter>
    <Provider store={store}>
        {/* <Header /> */}
        <Switch>
            <Route exact path='/' component={Home}></Route>
            <Route path='/search' component={Search}></Route>
        </Switch>
        {/* <Footer /> */}
    </Provider>
    </BrowserRouter>, 
    document.getElementById('root')
    );

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
