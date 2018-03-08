import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import App from './App/App';
import Browse from './App/Browse/Browse';

ReactDOM.render(
  <Router>
    <Switch>
      <Route exact path='/browse' component={Browse} />
      <Route path='/' component={App} />
    </Switch>
  </Router>,
document.getElementById('root'));
