import React from "react";

class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      time: new Date(),
    };
    this.tick = this.tick.bind(this);
  }

  componentDidMount() {
    this.intervalId = setInterval(this.tick, 1000);
  }

  componentWillUnmount() {
    clearInterval(this.intervalId);
  }

  tick() {
    this.setState({ time: new Date() });
  }

  render() {
    const date = this.state.time.toDateString();
    const hours = this.state.time.getHours();
    const minutes = this.state.time.getMinutes();
    const seconds = this.state.time.getSeconds();

    return (
      <div>
        <h1>Clock</h1>
        <div className="clock">
          <span>
            <span>Time:</span>
            <span>
              {hours}:{minutes}:{seconds}
            </span>
          </span>
          <span>
            <span>Date:</span>
            <span>{date}</span>
          </span>
        </div>
      </div>
    );
  }
}

export default Clock;
