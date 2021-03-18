import { connect } from "react-redux";
import StepList from "./step_list.jsx";
import { receiveStep, removeStep } from "../../actions/steps_actions.js";

const mapStateToProps = (state, todo_id) => ({
  steps: stepsByTodoId(state, todo_id),
  todo_id,
});

const mapDispatchToProps = (dispatch) => ({
  receiveStep: (step) => dispatch(receiveStep(step)),
});

export default connect(mapStateToProps, mapDispatchToProps)(StepList);
