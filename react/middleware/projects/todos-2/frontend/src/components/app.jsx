import React from "react";

import TodoListContainer from "./todos/todo_list_container.jsx";
import StepListContainer from "./step_list/step_list_container.jsx";

import TodoForm from "./todos/todo_form.jsx";
import StepForm from "./step_list/step_form.jsx";

const App = () => (
  <div className="app">
    <h1>Super Awesome Todo List</h1>

    <TodoListContainer />
  </div>
);

export default App;
