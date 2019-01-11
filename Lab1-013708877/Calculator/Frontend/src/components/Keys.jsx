import React, { Component } from "react";

class Keys extends Component {
  state = {};
  checkNumber()
  buttonHandler() {}
  render() {
    return <button onClick={this.buttonHandler} >{this.props.name}</button>;
  }
}

export default Keys;
