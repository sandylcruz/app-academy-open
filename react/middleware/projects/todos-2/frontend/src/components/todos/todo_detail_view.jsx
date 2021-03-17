import React from "react";

class TodoDetailView extends React.Component {
  render() {
    return (
      <div className="todo-body">
        {this.props.todo.body}
        <button className="deleteButton" onClick={this.props.removeTodo}>
          Delete Todo
        </button>
      </div>
    );
  }
}

export default TodoDetailView;
