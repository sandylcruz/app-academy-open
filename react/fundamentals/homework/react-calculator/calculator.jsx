import React from "react";

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.divide = this.divide.bind(this);
    this.multiply = this.multiply.bind(this);
    this.clear = this.clear.bind(this);

    this.state = {
      result: 0,
      num1: "",
      num2: "",
    };
  }

  add(e) {
    e.preventDefault();

    const result = this.state.num1 + this.state.num2;
    this.setState({ result });
  }

  subtract(e) {
    e.preventDefault();

    const result = this.state.num1 - this.state.num2;
    this.setState({ result });
  }

  divide(e) {
    e.preventDefault();

    const result = this.state.num1 / this.state.num2;
    this.setState({ result });
  }

  multiply(e) {
    e.preventDefault();

    const result = this.state.num1 * this.state.num2;
    this.setState({ result });
  }

  clear(e) {
    const result = 0;
    const num1 = "";
    const num2 = "";

    this.setState({ result });
    this.setState({ num1 });
    this.setState({ num2 });
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
        <button onClick={this.add} value={this.state.result}>
          +
        </button>
        <button onClick={this.subtract} value={this.state.result}>
          -
        </button>
        <button onClick={this.multiply} value={this.state.result}>
          *
        </button>
        <button onClick={this.divide} value={this.state.result}>
          /
        </button>

        <button onClick={this.clear} value={this.state.result}>
          Clear!
        </button>
      </div>
    );
  }
}

export default Calculator;
