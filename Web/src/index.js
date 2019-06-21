import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import Home from './pages/Home/index'
import Header from './components/Header';
import * as serviceWorker from './serviceWorker';
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import Search from './pages/Search';
import Footer from './components/Footer';


ReactDOM.render(
    <BrowserRouter>
    <div>
        {/* <Header /> */}
        <Switch>
            <Route exact path='/' component={Home}></Route>
            <Route path='/search' component={Search}></Route>
        </Switch>
        {/* <Footer /> */}
    </div>
    </BrowserRouter>, 
    document.getElementById('root')
    );

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
