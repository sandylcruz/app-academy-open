const { connect } = require("react-redux");
import loginFormContainer from "./login_form_container.js";
import { login } from "../../actions/session_actions.js"

const mapStateToProps = (state, ownProps) => {
  return {
    errors: state.errors
    login: "login"
  };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  processForm: (user) => dispatch(login(user)),
});

export default connect(mapStatetoProps, mapDispatchToProps)(Login);
