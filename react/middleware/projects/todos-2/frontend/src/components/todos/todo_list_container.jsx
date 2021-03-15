import TodoList from "./todo_list.jsx";
import { connect } from "react-redux";
import { allTodos } from "../../reducers/selectors.js";

const mapStateToProps = (state) => {
  return {
    allTodos: allTodos(state),
  };
};

const mapDispatchToProps = (dispatch) => ({
  receiveTodo: (todo) => dispatch(receiveTodo(todo)),
});

export default connect(mapStateToProps, mapDispatchToProps)(TodoList);
