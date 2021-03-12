// selectors.js. Define all selectors here

export const getAllTodos = ({ todos }) =>
  /*return all todos stored in state as array
    or todo objects */
  Object.keys(todos).map((id) => todos[id]);

export const getFilteredTodos = ({ todos, filter }) => {
  /* returns state's todos, filtered by their
      done/undone status */
  let result = [];
  for (let id in todos) {
    if (todos[id].done === filter) {
      result.push(todos[id]);
    }
  }
};

export const selectTodos = ({ todos }, id) => {
  /* return selected todo object or empty todo
      object if no todo exists */
  const nullTodo = {
    id: null,
    body: "",
    done: "undone",
  };
  return todos[id] || nullTodo;
};

// todo_list_container.jsx
import { getAllTodos } from "../../reducers/selectors";

const mapStateToProps = (state) => ({
  todos: getAllTodos(state),
  // selector passed entire state to utilize
  // and assemble data
});
