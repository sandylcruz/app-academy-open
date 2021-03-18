import { connect } from "react-redux";
import TodoDetailView from "./todo_detail_view.jsx";
import { removeTodo } from "../../actions/todo_actions.js";
import { receiveStep } from "../../actions/steps_actions.js";

const mapDispatchToProps = (dispatch) => ({
  removeTodo: (todo) => dispatch(removeTodo(todo)),
  receiveSteps: (steps) => dispatch(receiveSteps(steps)),
  receiveStep: (step) => dispatch(receiveStep(step)),
});

export default connect(null, mapDispatchToProps)(TodoDetailView);
