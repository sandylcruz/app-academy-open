import React from "react";

const TodoListItem = (props) => (
  <li className="todo-list-item" key={props.todo.id}>
    {props.todo.title}
  </li>
);

export default TodoListItem;
