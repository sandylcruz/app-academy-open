import { connect } from "react-redux";
import { receiveStep, removeStep } from "../../actions/step_actions";

const mapStateToProps = (state, todo_id) => ({
  steps: stepsByTodoId(state, todo_id), todo_id;
});

const mapDispatchToProps = (dispatch) => ({
  receiveStep: (step) => dispatch(receiveStep(step)),
});

export default connect(mapStateToProps, mapDispatchToProps)();
