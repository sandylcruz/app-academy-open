import React from "react";

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
        <button className="deleteButton" onClick={this.handleClick}>
          Delete Todo
        </button>
      </div>
    );
  }
}

export default TodoDetailView;
