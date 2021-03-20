import React from "react";
import TodoDetailViewContainer from "./todo_detail_view_container.jsx";

class TodoListItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      detail: false,
    };
    this.toggleTodo = this.toggleTodo.bind(this);
    this.toggleDetail = this.toggleDetail.bind(this);
  }

  toggleDetail(event) {
    event.preventDefault();
    this.setState((oldState) => ({
      ...oldState,
      detail: !oldState.detail,
    }));
  }

  toggleTodo(event) {
    event.preventDefault();
    const newTodo = {
      ...this.props.todo,
      done: !this.props.todo.done,
    };

    this.props.updateTodo(newTodo);
  }

  render() {
    return (
      <li className="todo-list-item">
        <div className="todo-header">
          <h3>
            <a onClick={this.toggleDetail}>{this.props.todo.title}</a>
          </h3>

          <button
            className={this.props.todo.done ? "done" : "undone"}
            onClick={this.toggleTodo}
          >
            {this.props.todo.done ? "Done" : "Undone"}
          </button>
        </div>
        {this.state.detail && (
          <TodoDetailViewContainer todo={this.props.todo} />
        )}
      </li>
    );
  }
}

export default TodoListItem;
