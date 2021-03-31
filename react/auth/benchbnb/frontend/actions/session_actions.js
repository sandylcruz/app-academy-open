import * as SessionAPIUtil from "../util/session_api_util.js";
export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER";
export const RECEIVE_SESSION_ERRORS = "RECEIVE_SESSION_ERRORS";

export const login = (user) => (dispatch) =>
  SessionAPIUtil.login(user).then((user) => dispatch(receiveCurrentUser(user)));

// test in window
// dispatch(login({ username: "squeakfreak", password: "password" }));

export const logout = () => (dispatch) =>
  SessionAPIUtil.logout().then(() => dispatch(logoutCurrentUser()));

export const signup = (user) => (dispatch) =>
  SessionAPIUtil.signup(user).then((user) =>
    dispatch(receiveCurrentUser(user))
  );

const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser,
});

const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER,
});

const receiveSessionErrors = (errors) => ({
  type: RECEIVE_SESSION_ERRORS,
  errors,
});
