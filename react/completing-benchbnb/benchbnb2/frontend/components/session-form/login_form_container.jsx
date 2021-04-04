import React, { useCallback } from "react";
import { useSelector, useDispatch } from "react-redux";

import SessionForm from "./session_form.jsx";
import { login } from "../../actions/session_actions.js";
import { selectErrors } from "../../reducers/selectors";

const LoginFormContainer = (props) => {
  const errors = useSelector(selectErrors);
  const dispatch = useDispatch();

  const processForm = useCallback((user) => dispatch(login(user)), [dispatch]);

  return (
    <SessionForm
      {...props}
      formType="login"
      errors={errors}
      processForm={processForm}
    />
  );
};

export default LoginFormContainer;
