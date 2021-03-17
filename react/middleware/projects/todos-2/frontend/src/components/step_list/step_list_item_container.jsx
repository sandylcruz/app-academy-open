import { removeStep, receiveStep } from "../../actions/step_actions";

const mapDispatchToProps = (dispatch) => ({
  removeStep: (step) => dispatch(removeStep);
  receiveStep: (step) => dispatch(receiveStep)
});
