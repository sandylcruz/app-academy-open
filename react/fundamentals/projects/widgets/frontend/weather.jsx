import React from "react";

class Weather extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      weather: null,
    };
    this.setUserLocation = this.setUserLocation.bind(this);
    // this.getUserLocation();
    // this.pollWeather = this.pollWeather.bind(this);
  }

  componentDidMount() {
    console.log("$$$");
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(this.setUserLocation);
    } else {
      console.log("Geolocation not supported");
    }
  }

  setUserLocation(data) {
    console.log(data);
    // if (navigator.geolocation) {
    //   navigator.geolocation.getCurrentPosition(success, error);
    // } else {
    //   console.log("Geolocation not supported");
    // }

    // const latitude = ;
    // const longitude = ;
    const APIKey = OPEN_WEATHER_API_KEY;
    const url = "api.openweathermap.org/data/2.5/weather?";
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
