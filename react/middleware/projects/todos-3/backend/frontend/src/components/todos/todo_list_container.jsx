import TodoList from "./todo_list.jsx";
import { connect } from "react-redux";
import { allErrors, allTodos } from "../../reducers/selectors.js";
import {
  receiveTodo,
  removeTodo,
  fetchTodos,
  createTodo,
  updateTodo,
  deleteTodo,
} from "../../actions/todo_actions.js";

import { fetchSteps } from "../../actions/step_actions.js";

const mapStateToProps = (state) => {
  return {
    allTodos: allTodos(state),
    errors: allErrors(state),
  };
};

const mapDispatchToProps = (dispatch) => ({
  removeTodo: (todo) => dispatch(removeTodo(todo)),
  updateTodo: (todo) => dispatch(updateTodo(todo)),
  fetchTodos: () => dispatch(fetchTodos()),
  createTodo: (todo, tags) => dispatch(createTodo(todo, tags)),
  updateTodo: (todo) => dispatch(updateTodo(todo)),
  deleteTodo: (todo) => dispatch(deleteTodo(todo)),
  fetchSteps: (todoId) => dispatch(fetchSteps(todoId)),
});

export default connect(mapStateToProps, mapDispatchToProps)(TodoList);
// connect has reference to store
// creates new component that internally calls store.getState
// and runs that =through mapstatetoprops
// renders child component (todolist) with the props
// connect is a wrapper component
