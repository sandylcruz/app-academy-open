import React from "react";

class TodoForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      body: "body",
      done: false,
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  // update(property) {
  //   this.setState((property: event.target.value));
  // }

  handleSubmit(event) {}

  render() {
    return (
      <div className="todoForm">
        <label for="title">Title:</label>
        <input id="title" type="text" placeholder="Give cats a bath"></input>

        <label for="body">Body:</label>
        <textarea
          class="body"
          cols="20"
          rows="5"
          placeholder="Use extra soap..."
        />

        <label for="tags">Tags:</label>
        <input id="tags" type="text" placeholder="Enter a new tag"></input>

        <button id="submit" type="submit" onChange={this.handleSubmit}>
          Create Todo!
        </button>
      </div>
    );
  }
}

export default TodoForm;
