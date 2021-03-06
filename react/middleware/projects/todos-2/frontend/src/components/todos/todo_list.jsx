import React from "react";
import TodoListItem from "./todo_list_item.jsx";
import TodoForm from "./todo_form.jsx";

class TodoList extends React.Component {
  render() {
    return (
      <div className="todo-container">
        <TodoForm receiveTodo={this.props.receiveTodo} />
        <ul className="todo-list">
          {this.props.allTodos.map((todo) => (
            <TodoListItem
              key={todo.id}
              todo={todo}
              removeTodo={this.props.removeTodo}
              receiveTodo={this.props.receiveTodo}
            />
          ))}
        </ul>
      </div>
    );
  }
}

export default TodoList;
