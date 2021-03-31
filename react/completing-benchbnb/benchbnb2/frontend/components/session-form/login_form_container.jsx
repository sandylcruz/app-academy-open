import React, { useCallback } from "react";
import { useSelector, useDispatch } from "react-redux";
import SessionForm from "./session_form.jsx";
import { login } from "../../actions/session_actions.js";

// const mapStateToProps = (state, ownProps) => {
//   return {
//     errors: state.errors,
//     login: "login",
//   };
// };

// const mapDispatchToProps = (dispatch, ownProps) => ({
//   processForm: (user) => dispatch(login(user)),
// });

// export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);

const LoginFormContainer = (props) => {
  const errors = useSelector((state) => state.errors);
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
