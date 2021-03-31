import React, { useCallback } from "react";
import { useSelector, useDispatch } from "react-redux";

import { signup } from "../../actions/session_actions.js";
import SessionForm from "./session_form.jsx";

// const mapStateToProps = (state, ownProps) => {
//   return {
//     errors: state.errors,
//     formType: "signup",
//   };
// };

// const mapDispatchToProps = (dispatch, ownProps) => ({
//   processForm: (user) => dispatch(signup(user)),
// });

// export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);

const SignupForm = (props) => {
  const errors = useSelector((state) => state.errors);
  const dispatch = useDispatch();

  const processForm = useCallback((user) => dispatch(signup(user)), [dispatch]); // useDispatch
  return (
    <SessionForm
      {...props}
      formType="signup"
      errors={errors}
      processForm={processForm}
    />
  );
};

export default SignupForm;
