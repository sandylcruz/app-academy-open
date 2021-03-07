import React from "react";

class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      time: new Date(),
    };
  }

  render() {
    console.log("hasdfasd");
    return <div></div>;
  }

  tick() {}
}

export default Clock;
