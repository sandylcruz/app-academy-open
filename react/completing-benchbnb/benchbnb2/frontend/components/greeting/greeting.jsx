import React from "react";
import { Link } from "react-router-dom";

const Greeting = ({ currentUser, logout }) => {
  console.log(currentUser);
  return (
    <nav className="nav-group">
      {!currentUser ? (
        <>
          <Link to="/login">Log in</Link>
          {" or "}
          <Link to="/signup">Sign up</Link>
        </>
      ) : (
        <>
          <p>Hello, {currentUser.username}</p>
          <button className="headerButton" onClick={logout}>
            Logout
          </button>
        </>
      )}
    </nav>
  );
};

export default Greeting;
