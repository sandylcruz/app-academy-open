import React from "react";
import StepListContainer from "../step_list/step_list_item_container.jsx";
import StepForm from "../step_list/step_form.jsx";

class TodoDetailView extends React.Component {
  // constructor(props) {
  //   super(props);
  //   this.handleClick = this.handleClick.bind(this);
  // }

  // handleClick() {
  //   this.props.removeTodo(this.props.todo);
  // }

  render() {
    return (
      <div className="todo-body">
        {this.props.todo.body}

        {this.props.todo.steps && <StepListContainer todo_id={todo_id} />}

        <StepForm receiveStep={this.props.receiveStep} />

        <button className="deleteButton" onClick={this.handleClick}>
          Delete Todo
        </button>
      </div>
    );
  }
}

export default TodoDetailView;
