import { connect } from "react-redux";
import React from "react";
import SessionForm from "./session_form.jsx";
import { signup } from "../../actions/session_actions.js";

const mapStateToProps = (state, ownProps) => {
  return {
    errors: state.errors,
    formType: "signup",
  };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  processForm: (user) => dispatch(signup(user)),
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);
