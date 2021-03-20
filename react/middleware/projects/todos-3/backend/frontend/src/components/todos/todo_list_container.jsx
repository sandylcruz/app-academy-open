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
  createTodo: (todo) => dispatch(createTodo(todo)),
  updateTodo: (todo) => dispatch(updateTodo(todo)),
  deleteTodo: (todo) => dispatch(deleteTodo(todo)),
});

export default connect(mapStateToProps, mapDispatchToProps)(TodoList);
