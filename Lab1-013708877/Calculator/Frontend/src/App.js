import React, { Component } from "react";
import "./App.css";
import Display from "./components/Display";
import Result from "./components/Result";
import axios from "axios";

class App extends Component {
  state = {
    input: "",
    result: ""
  };
  inputChangedHandler = event => {
    const input = event.target.value;

    this.setState({
      input: input
    });
    console.log("state input", this.state.input);
  };

  calculateResultHandler = () => {
    const result = this.state.input;
    const input = eval(result);
    this.setState({
      input: input
    });
  };
  operationHandler = event => {
    const input = this.state.input + event.target.value;

    this.setState({
      input: input
    });
  };
  handleOps = () => {
    const input = this.state.input;
    console.log("axios data", input);
    const data = {
      input: input
    };
    axios.post("http://localhost:3001/calculate", data).then(response => {
      console.log("Status Code : ", response.status);
      console.log("response data : ", response.data);
      if (response.status === 200) {
        this.setState({
          input: response.data.output
        });
      } else {
        this.setState({
          input: "Enter Valid Data"
        });
      }
    });
  };
  render() {
    return (
      <div className="App">
        <Display
          userInput={this.state.input}
          changed={this.inputChangedHandler.bind(this)}
          autofocus
        />

        {/* <button onClick={this.operationHandler} value="+">
          +
        </button> */}
        <button onClick={this.operationHandler} value="+">
          +
        </button>
        <button
          className="btn-display"
          onClick={this.operationHandler}
          value="-"
        >
          -
        </button>
        <button
          className="btn-display"
          onClick={this.operationHandler}
          value="*"
        >
          *
        </button>
        <button
          className="btn-display"
          onClick={this.operationHandler}
          value="/"
        >
          /
        </button>
        <button className="btn-display" onClick={this.handleOps} value="=">
          =
        </button>
      </div>
    );
  }
}

export default App;
