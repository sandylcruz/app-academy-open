import React from "react";

class TodoDetailView extends React.Component {
  render() {
    return <div className="todo-body">{this.props.todo.body}</div>;

    <button className="deleteButton" onClick={this.props.removeTodo}>
      Delete Todo
    </button>;
  }
}

export default TodoDetailView;
