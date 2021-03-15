import React from "react";

class TodoList extends React.Component {
  render() {
    return (
      <div className="todo-container">
        {/* <h2>This is the title for the container</h2> */}
        {this.props.allTodos.map((todo) => (
          <li key={todo.id}>{todo.title}</li>
        ))}
      </div>
    );
  }
}

export default TodoList;
