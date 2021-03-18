import React from "react";
import StepListItemContainer from "../step_list/step_list_item_container.jsx";
import StepForm from "../step_list/step_form.jsx";

class TodoDetailView extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick() {
    this.props.removeTodo(this.props.todo);
  }

  render() {
    return (
      <div className="todo-body">
        {this.props.todo.body}

        <StepListItemContainer
          step={{
            title: "Cat title",
          }}
        />

        <StepForm />

        <button className="deleteButton" onClick={this.handleClick}>
          Delete Todo
        </button>
      </div>
    );
  }
}

export default TodoDetailView;
