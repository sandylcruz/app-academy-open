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
    const toggledTodo = Object.assign({}, this.props.todo, {
      done: !this.props.todo.done,
    });
    this.props.updateTodo(toggledTodo);
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
            {this.props.todo.done ? "Undo" : "Done"}
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
