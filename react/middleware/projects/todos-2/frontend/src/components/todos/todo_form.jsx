import React from "react";
import { uniqueId } from "../../util/util.js";

class TodoForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      body: "",
      done: false,
    };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);

    this.handleTitleChange = this.handleTitleChange.bind(this);
    this.handleBodyChange = this.handleBodyChange.bind(this);
    this.handleTagChange = this.handleTagChange.bind(this);
  }

  handleChange(property, event) {
    this.setState({ [property]: event.target.value });
  }

  handleSubmit(event) {
    event.preventDefault();
    const todo = Object.assign({}, this.state, uniqueId);
    this.props.receiveTodo(todo);
  }

  handleTitleChange(event) {
    this.handleChange("title", event);
  }

  handleBodyChange(event) {
    this.handleChange("body", event);
  }

  handleTagChange(event) {
    this.handleChange("tag", event);
  }

  render() {
    return (
      <form className="todoForm" onSubmit={this.handleSubmit}>
        <label className="title">Title:</label>
        <input
          className="title"
          type="text"
          value={this.state.title}
          placeholder="Give cats a bath"
          onChange={this.handleTitleChange}
        ></input>

        <label className="body">Body:</label>
        <textarea
          className="textbox-body"
          cols="20"
          rows="5"
          value={this.state.body}
          placeholder="Use extra soap..."
          onChange={this.handleBodyChange}
        ></textarea>

        <label className="tags">Tags:</label>
        <input
          className="tags"
          type="text"
          value={this.state.tags}
          placeholder="Enter a new tag"
          onChange={this.handleTagChange}
        ></input>

        <button className="submit" type="submit" onChange={this.handleSubmit}>
          Create Todo!
        </button>
      </form>
    );
  }
}

export default TodoForm;
