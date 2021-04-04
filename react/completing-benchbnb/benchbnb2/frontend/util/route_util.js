import React, { Component } from "react";
import { useSelector } from "react-redux";
import { withRouter } from "react-router";
import { Route, Redirect } from "react-router-dom";

import { selectCurrentUser } from "../reducers/selectors.js";

const Auth = ({ component: Component, path, exact }) => {
  const currentUser = useSelector(selectCurrentUser);

  return (
    <Route
      path={path}
      exact={exact}
      render={(props) =>
        !currentUser ? <Component {...props} /> : <Redirect to="/" />
      }
    />
  );
};

export const AuthRoute = withRouter(Auth);
