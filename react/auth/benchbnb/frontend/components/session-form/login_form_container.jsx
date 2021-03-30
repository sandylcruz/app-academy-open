import { connect } from "react-redux";
import { login } from "../../actions/session_actions.js";
import SessionForm from "./session_form.jsx";

const mapStateToProps = (state, ownProps) => {
  return {
    errors: state.errors,
    login: "login",
  };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  processForm: (user) => dispatch(login(user)),
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);
