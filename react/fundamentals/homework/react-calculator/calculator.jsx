import React from "react";

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      result: 0,
      num1: "",
      num2: "",
    };

    //your code here
  }

  //your code here

  render() {
    return (
      <div>
        <h1>{this.state.result}</h1>
        //your code will replace this
      </div>
    );
  }
}

export default Calculator;
