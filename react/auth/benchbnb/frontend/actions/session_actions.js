import * as SessionAPIUtil from "../util/session_api_util.js";
export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER";
export const RECEIVE_SESSION_ERRORS = "RECEIVE_SESSION_ERRORS";

export const login = (user) => (dispatch) =>
  SessionAPIUtil.login(user).then(() => dispatch(receiveCurrentUser));

export const logout = () => (dispatch) =>
  SessionAPIUtil.logout().then(() => dispatch(logoutCurrentUser));

export const signup = (user) => (dispatch) =>
  SessionAPIUtil.signup(user).then((user) => dispatch(receiveCurrentUser));

const receiveCurrentUser = (currentUser) => ({
  type: receiveCurrentUser,
  currentUser,
});
const logoutCurrentUser = () => ({
  type: logoutCurrentUser,
});

const receiveSessionErrors = (errors) => ({
  type: receiveSessionErrors,
  errors,
});
