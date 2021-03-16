import React from "react";

class TodoForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      body: "body",
      done: false,
    };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(property) {
    this.setState({ property: event.target.value });
  }

  handleSubmit(event) {
    event.preventDefault();
    this.handleChange(event);
  }

  render() {
    return (
      <form className="todoForm">
        <label id="title">Title:</label>
        <input id="title" type="text" placeholder="Give cats a bath"></input>

        <label id="body">Body:</label>
        <textarea
          className="textbox-body"
          cols="20"
          rows="5"
          placeholder="Use extra soap..."
        />

        <label id="tags">Tags:</label>
        <input id="tags" type="text" placeholder="Enter a new tag"></input>

        <button id="submit" type="submit" onChange={this.handleSubmit}>
          Create Todo!
        </button>
      </form>
    );
  }
}

export default TodoForm;
