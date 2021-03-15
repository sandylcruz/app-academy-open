import React from "react";

// const TodoListItem = (props) => {
//   <div className="todoListItem">
//     {props.allTodos.map((todo) => (
//       <li key={todo.id}>{todo.title}</li>
//     ))}
//   </div>;
// };

const TodoListItem = (props) => <li key={props.todo.id}>{props.todo.title}</li>;

export default TodoListItem;
