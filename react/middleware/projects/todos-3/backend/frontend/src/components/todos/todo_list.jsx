import React from "react";
import TodoListItem from "./todo_list_item.jsx";
import TodoForm from "./todo_form.jsx";
import { fetchTodos } from "../../actions/todo_actions.js";

class TodoList extends React.Component {
  componentDidMount() {
    this.props.fetchTodos();
  }

  render() {
    return (
      <div className="todo-container">
        <TodoForm
          receiveTodo={this.props.receiveTodo}
          createTodo={this.props.createTodo}
          updateTodo={this.props.updateTodo}
          errors={this.props.errors}
        />
        <ul className="todo-list">
          {this.props.allTodos.map((todo) => (
            <TodoListItem
              key={todo.id}
              todo={todo}
              removeTodo={this.props.removeTodo}
              receiveTodo={this.props.receiveTodo}
              updateTodo={this.props.updateTodo}
            />
          ))}
        </ul>
      </div>
    );
  }
}

export default TodoList;
