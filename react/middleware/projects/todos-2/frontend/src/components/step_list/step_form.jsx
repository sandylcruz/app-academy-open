import React from "react";
import { uniqueId } from "../../util/util.js";

class StepForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      description: "",
      done: false,
      todo_id: this.props.todo_id,
    };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);

    this.handleTitleChange = this.handleTitleChange.bind(this);
    this.handleDescriptionChange = this.handleDescriptionChange.bind(this);
  }

  handleChange(property, event) {
    this.setState({ [property]: event.target.value });
  }

  handleSubmit(event) {
    event.preventDefault();

    const step = Object.assign({}, this.state, { id: uniqueId });
    this.props.receiveStep(step);

    this.setState({
      title: "",
      body: "",
    });
  }

  handleTitleChange(event) {
    this.handleChange("title", event);
  }

  handleDescriptionChange(event) {
    this.handleChange("description", event);
  }

  render() {
    return (
      <form className="step-form" onSubmit={this.handleSubmit}>
        <label className="step-form-title">Title:</label>
        <input
          className="step-title"
          type="text"
          value={this.state.title}
          placeholder="Pick up Callie"
          onChange={this.handleTitleChange}
          required
        />

        <label className="step-form-description">Description:</label>
        <input
          className="step-description"
          type="text"
          value={this.state.description}
          placeholder="Very carefully..."
          onChange={this.handleDescriptionChange}
          required
        />

        <button className="submit" type="submit" onChange={this.handleSubmit}>
          Create Step!
        </button>
      </form>
    );
  }
}

export default StepForm;
