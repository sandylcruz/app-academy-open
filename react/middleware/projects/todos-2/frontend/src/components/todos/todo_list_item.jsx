import React from "react";

class TodoListItem extends React.Component {
  constructor(props) {
    super(props);

    this.toggleTodo = this.toggleTodo.bind(this);
  }

  toggleTodo(event) {
    event.preventDefault();
    const newTodo = {
      ...this.props.todo,
      done: !this.props.todo.done,
    };

    this.props.receiveTodo(newTodo);
  }

  render() {
    return (
      <li className="todo-list-item">
        <div className="todo-header">
          {this.props.todo.title}

          <button
            className={this.props.todo.done ? "done" : "undone"}
            onClick={this.toggleTodo}
          >
            {this.props.todo.done ? "Done" : "Undone"}
          </button>

          <button className="deleteButton" onClick={this.props.removeTodo}>
            Delete
          </button>
        </div>
      </li>
    );
  }
}

export default TodoListItem;
