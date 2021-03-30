import React from "react";
import ReactDOM from "react-dom";
import { signup, login, logout } from "./util/session_api_util.js";

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  ReactDOM.render(<h1>Welcome to BenchBnb</h1>);

  window.login = login;
  window.signup = signup;
  window.logout = logout;
});
