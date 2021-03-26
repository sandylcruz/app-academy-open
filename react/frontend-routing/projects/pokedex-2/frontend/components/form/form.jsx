import React from "react";

class Form extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(property) {
    return (event) => this.setState({ [property]: event.target.value });
  }

  handleSubmit(event) {
    event.preventDefault();
    this.props.submit(this.state);
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <label>
          Name
          <input type="text"></input>
        </label>

        <label>Name</label>
        <label>Image url</label>
        <label>Type</label>
        <label>Attack</label>
        <label>Defense</label>
        <label>Move 1</label>
        <label>Move 2</label>

        <button type="submit">Create Pokemon</button>
      </form>
    );
  }
}

export default Form;
