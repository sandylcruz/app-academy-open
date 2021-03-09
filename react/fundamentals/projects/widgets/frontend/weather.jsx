import React from "react";

const getWeather = (location) => {};
// getWeather(location).then((weather) => {
//   this.setState({ weather });
// });

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
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(this.setUserLocation);
    } else {
      console.log("Geolocation not supported");
    }
  }

  setUserLocation(location) {
    const latitude = location.coords.latitude;
    const longitude = location.coords.longitude;
    const APIKey = OPEN_WEATHER_API_KEY;
    const url = `https://api.openweathermap.org/data/2.5/weather?lat=${latitude}&lon=${longitude}&appid=${APIKey}`;
    const xmlhttp = new XMLHttpRequest();
    console.log(url);

    xmlhttp.onreadystatechange = () => {
      if (
        xmlhttp.readyState === XMLHttpRequest.DONE &&
        xmlhttp.status === 200
      ) {
        const weatherData = JSON.parse(xmlhttp.responseText);
        this.setState({ weather: weatherData });
      }
    };

    xmlhttp.open("GET", url, true);
    xmlhttp.send();
  }

  render() {
    return (
      <div>
        <h1>Weather</h1>
        <div className="weather-container">
          {this.state.weather ? (
            <div className="weather-content">
              <span>
                <span>Temperature: </span>
                <span>
                  {((this.state.weather.main.temp - 273.15) * 1.8 + 32).toFixed(
                    2
                  )}{" "}
                  ° F{" "}
                </span>
              </span>

              <span>
                <span>City: </span>
                <span>{this.state.weather.name}</span>
              </span>
            </div>
          ) : (
            "Loading..."
          )}
        </div>
      </div>
    );
  }
}

export default Weather;
