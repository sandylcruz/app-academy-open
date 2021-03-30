import { login, logout, signup } from "../utils/session_api_utils.js";
export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";

export const login = (user) => (dispatch) =>
  login(user).then(() => dispatch(receiveCurrentUser));

export const logout = () => (dispatch) =>
  logout().then(() => dispatch(logoutCurrentUser));

export const signup = (user) => (dispatch) =>
  signup(user).then((user) => dispatch(receiveCurrentUser));

const receiveCurrentUser = (currentUser) => ({
  type: receiveCurrentUser,
  currentUser,
});
const logoutCurrentUser = () => ({
  type: logoutCurrentUser,
});

const receiveErrors = (errors) => ({
  type: receiveErrors,
  errors,
});
