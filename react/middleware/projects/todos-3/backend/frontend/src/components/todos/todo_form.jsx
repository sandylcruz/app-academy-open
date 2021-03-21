import React from "react";
import { uniqueId } from "../../util/util.js";

class TodoForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      body: "",
      done: false,
      newTag: "",
      tags: [],
    };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);

    this.handleTitleChange = this.handleTitleChange.bind(this);
    this.handleBodyChange = this.handleBodyChange.bind(this);
    this.handleNewTagChange = this.handleNewTagChange.bind(this);
    this.addTag = this.addTag.bind(this);

    this.handleAddTag = this.handleAddTag.bind(this);
  }

  addTag(event) {
    // this.setState({
    //   tag_names: [this.state.tag_names, this.state.newTag],
    //   newTag: "",
    // });
  }

  handleChange(property, event) {
    this.setState({ [property]: event.target.value });
  }

  handleSubmit(event) {
    event.preventDefault();
    const todo = Object.assign({}, this.state, uniqueId);
    this.props
      .createTodo(todo)
      .then(() => this.setState({ title: "", body: "", tag_names: [] }));
  }

  handleTitleChange(event) {
    this.handleChange("title", event);
  }

  handleBodyChange(event) {
    this.handleChange("body", event);
  }

  handleNewTagChange(event) {
    this.handleChange("newTag", event);
  }

  handleAddTag() {
    this.setState((oldState) => {
      const newTag = oldState.newTag;
      const nextTags = [...oldState.tags, newTag];
      return {
        ...oldState,
        tags: nextTags,
        newTag: "",
      };
    });
  }

  render() {
    const tag_names = this.state.tags.map((tag, index) => {
      return <li key={index}>{tag}</li>;
    });

    return (
      <form className="todoForm" onSubmit={this.handleSubmit}>
        {this.props.errors &&
          this.props.errors.map((error) => <div key={error}>{error}</div>)}
        <label className="title">Title:</label>
        <input
          className="title"
          type="text"
          value={this.state.title}
          placeholder="Give cats a bath"
          onChange={this.handleTitleChange}
          required
        ></input>

        <label className="body">Body:</label>
        <textarea
          className="textbox-body"
          cols="20"
          rows="5"
          value={this.state.body}
          placeholder="Use extra soap..."
          onChange={this.handleBodyChange}
          required
        ></textarea>

        <label className="tags">Tags:</label>
        <input
          className="tags"
          type="text"
          value={this.state.newTag}
          placeholder="Enter a new tag"
          onChange={this.handleNewTagChange}
        ></input>
        <button
          className="addTagButton"
          type="button"
          onClick={this.handleAddTag}
        >
          Add tag
        </button>

        <ul className="tag-list">{tag_names}</ul>

        <button className="submit" type="submit">
          Create Todo!
        </button>
      </form>
    );
  }
}

export default TodoForm;
