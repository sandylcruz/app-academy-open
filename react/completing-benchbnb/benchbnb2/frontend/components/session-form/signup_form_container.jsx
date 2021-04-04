import React, { useCallback } from "react";
import { useSelector, useDispatch } from "react-redux";

import { signup } from "../../actions/session_actions.js";
import SessionForm from "./session_form.jsx";

const SignupForm = (props) => {
  const errors = useSelector((state) => state.errors);
  const dispatch = useDispatch();

  const processForm = useCallback((user) => dispatch(signup(user)), [dispatch]); // useDispatch
  return (
    <SessionForm
      {...props}
      errors={errors}
      formType="signup"
      processForm={processForm}
    />
  );
};

export default SignupForm;
