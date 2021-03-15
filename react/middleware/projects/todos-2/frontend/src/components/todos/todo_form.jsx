import React from "react";

class TodoForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      body: "body",
      done: false,
    };
  }

  update(property) {
    this.setState();
  }

  handleSubmit() {}

  render() {
    return (
      <div className="todoForm">
        <label for="title">Title:</label>
        <input id="title" type="text"></input>

        <label for="body">Body:</label>
        <input id="body" type="text"></input>

        <label for="tags">Tags:</label>
        <input id="tags" type="text"></input>

        <button id="submit" type="submit">
          Create Todo!
        </button>
      </div>
    );
  }
}

export default TodoForm;
