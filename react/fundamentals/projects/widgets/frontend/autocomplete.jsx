import React from "react";

class Autocomplete extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      inputVal: "",
    };
    this.handleInput = this.handleInput.bind(this);
  }

  handleInput(event) {
    this.setState({ inputVal: event.currentTarget.value });
  }

  matches() {
    const lowercaseInput = this.state.inputVal.toLowerCase();

    return this.props.people.filter((person) => {
      const lowercaseName = person.name.toLowerCase();
      return lowercaseName.indexOf(lowercaseInput) !== -1;
    });

    return this.props.people.filter();
  }

  render() {
    return (
      <div>
        <h1>Autocomplete</h1>

        <div className="autocomplete-container">
          <input
            type="text"
            placeholder="Search..."
            onChange={this.handleInput}
          ></input>
          <ul class="matches-list">
            {this.matches().map((person) => (
              <li key={person.name}>{person.name}</li>
            ))}
          </ul>
        </div>
      </div>
    );
  }
}
export default Autocomplete;
