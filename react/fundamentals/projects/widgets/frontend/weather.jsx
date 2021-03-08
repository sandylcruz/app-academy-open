import React from "react";

class Weather extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <h1>Weather</h1>
        <div className="weather-container"></div>
      </div>
    );
  }
}

export default Weather;
