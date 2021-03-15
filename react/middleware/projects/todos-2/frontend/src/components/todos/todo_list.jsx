import React from "react";
import TodoListItem from "./todo_list_item.jsx";

class TodoList extends React.Component {
  render() {
    return (
      <div className="todo-container">
        <ul className="todo-list">
          {this.props.allTodos.map((todo) => (
            <TodoListItem key={todo.id} todo={todo} />
          ))}
        </ul>
      </div>
    );
  }
}

export default TodoList;
