import React from "react";

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.state = {
      result: 0,
      num1: "",
      num2: "",
    };
  }

  setNum1(e) {
    let num1;

    if (e.target.value === "") {
      ("");
    } else {
      num1 = parseInt(e.target.value);
    }

    this.setState({ num1 });
  }

  setNum2(e) {
    let num2;

    if (e.target.value === "") {
      ("");
    } else {
      num2 = parseInt(e.target.value);
    }

    this.setState({ num2 });
  }

  render() {
    return (
      <div>
        <h1>Result: {this.state.result}</h1>
        <input onChange={this.setNum1} value={this.state.num1}></input>
        <input onChange={this.setNum2} value={this.state.num2}></input>
      </div>
    );
  }
}

export default Calculator;
