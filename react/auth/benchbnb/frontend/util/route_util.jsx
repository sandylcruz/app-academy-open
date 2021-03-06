import React, { Component } from "react";
import { connect } from "react-redux";
import { withRouter } from "react-router";
import { Route, Redirect } from "react-router-dom";

const Auth = ({ component: Component, path, loggedIn, exact }) =>
  console.log(path, loggedIn) || (
    <Route
      path={path}
      exact={exact}
      render={(props) =>
        !loggedIn ? <Component {...props} /> : <Redirect to="/" />
      }
    />
  );

const mapStateToProps = (state) => {
  return { loggedIn: Boolean(state.session.id) };
};

export const AuthRoute = withRouter(connect(mapStateToProps)(Auth));
