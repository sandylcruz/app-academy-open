const { connect } = require("react-redux");
import loginFormContainer from "./login_form_container.js";

const mapStateToProps = (state, ownProps) => {
  return {
    errors: state.errors,
    formType: "signup",
  };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  processForm: (user) => dispatch(signup(user)),
});

export default connect(mapStatetoProps, mapDispatchToProps)(Session);
