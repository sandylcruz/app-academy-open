import { connect } from "react-redux";
import StepList from "./step_list";
// Actions
import { stepsByTodoId } from "../../reducers/selectors";
import {
  receiveStep,
  fetchSteps,
  createStep,
  updateStep,
  deleteStep,
} from "../../actions/step_actions";

const mapStateToProps = (state, { todo_id }) => ({
  steps: stepsByTodoId(state, todo_id),
  todo_id,
});

const mapDispatchToProps = (dispatch) => ({
  receiveStep: (step) => dispatch(receiveStep(step)),
  fetchSteps: (steps) => dispatch(fetchSteps(step)),
  createStep: (step) => dispatch(createStep(step)),
  // updateStep: (step) => dispatch(updateStep(step)),
  deleteStep: (step) => dispatch(deleteStep(step)),
});

export default connect(mapStateToProps, mapDispatchToProps)(StepList);
