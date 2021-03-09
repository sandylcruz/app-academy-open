import React from "react";

class Autocomplete extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      inputVal: "",
    };
    this.render();
  }

  render() {
    return (
      <div>
        <h1>Autocomplete</h1>

        <div className="autocomplete-container">
          <input type="text" placeholder="Search..."></input>
          <ul></ul>
        </div>
      </div>
    );
  }
}
export default Autocomplete;
