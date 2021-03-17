import React from "react";

class TodoListItem extends React.Component {
  constructor(props) {
    super(props);

    this.toggleTodo = this.toggleTodo.bind(this);
    this.toggleDetail = this.toggleDetail.bind(this);
  }

  toggleTodo(event) {
    event.preventDefault();
  }

  toggleDetail(event) {
    event.preventDefault();
  }

  render() {
    return (
      <li className="todo-list-item">
        <div className="todo-header">
          {this.props.todo.title}

          <button
            className="delete-todo"
            type="submit"
            onChange={this.props.removeTodo}
          >
            Delete
          </button>
        </div>
      </li>
    );
  }
}

export default TodoListItem;
