import React, { Component } from 'react';
import getWeb3 from '../utils/getWeb3';
import './App.css';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = { web3: null };
  }

  componentWillMount() {
    // Get network provider and web3 instance.
    getWeb3
      .then((results) => {
        this.setState({ web3: results.web3 });
      })
      .catch(() => {
        console.log('Error finding web3.');
      });
  }

  render() {
    return (
      <div className="App">
        <h1>Crypto Cars</h1>
      </div>
    );
  }
}

export default App;
