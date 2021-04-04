import React, { useCallback } from "react";
import { useDispatch, useSelector } from "react-redux";

import { logout as logoutAction } from "../../actions/session_actions.js";
import Greeting from "./greeting.jsx";
import { selectCurrentUser } from "../../reducers/selectors.js";

const GreetingContainer = (props) => {
  const currentUser = useSelector(selectCurrentUser);
  const dispatch = useDispatch();

  const logout = useCallback(() => dispatch(logoutAction()), [dispatch]);

  return <Greeting {...props} currentUser={currentUser} logout={logout} />;
};

export default GreetingContainer;
