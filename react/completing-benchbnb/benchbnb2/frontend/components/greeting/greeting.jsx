import React from "react";
import { Link } from "react-router-dom";

const Greeting = ({ currentUser, logout }) => (
  <nav className="nav-group">
    {!currentUser ? (
      <>
        <Link to="/login">Log in</Link>
        {" or "}
        <Link to="/signup">Sign up</Link>
      </>
    ) : (
      <>
        <h2>Hi, {currentUser.username}!</h2>
        <button className="headerButton" onClick={logout}>
          Logout
        </button>
      </>
    )}
  </nav>
);

export default Greeting;
