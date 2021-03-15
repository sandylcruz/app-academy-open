import React from "react";
import TodoListContainer from "./todos/todo_list_container.jsx";
import TodoForm from "./todos/todo_form.jsx";

const App = () => (
  <div className="app">
    <h1>Super Awesome Todo List</h1>

    <TodoForm />
    <TodoListContainer />
  </div>
);

export default App;
