import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import Home from './pages/Home/index'
import Header from './components/Header/Header';
import * as serviceWorker from './serviceWorker';
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import { faHome } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";


ReactDOM.render(
    <BrowserRouter>
    <div>
        <Header />
        <Switch>
            <Route path='/' component={Home}></Route>
        </Switch>
    </div>
    </BrowserRouter>, 
    document.getElementById('root')
    );

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
