import TodoList from "./todo_list.jsx";
import { connect } from "react-redux";
import { allTodos } from "../../reducers/selectors.js";
import {
  receiveTodo,
  removeTodo,
  fetchTodos,
} from "../../actions/todo_actions.js";

const mapStateToProps = (state) => {
  return {
    allTodos: allTodos(state),
    fetchTodos: fetchTodos(),
  };
};

const mapDispatchToProps = (dispatch) => ({
  receiveTodo: (todo) => dispatch(receiveTodo(todo)),
  removeTodo: (todo) => dispatch(removeTodo(todo)),
});

export default connect(mapStateToProps, mapDispatchToProps)(TodoList);
