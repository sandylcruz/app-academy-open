import React, { useState, useCallback } from "react";
import { Link } from "react-router-dom";

const SessionForm = ({ processForm }) => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  const handleSubmit = useCallback(
    (event) => {
      event.preventDefault();
      const user = {
        username,
        password,
      };
      processForm(user);
    },
    [username, password, processForm]
  );

  const updateUsername = useCallback((event) => {
    setUsername(event.currentTarget.value);
  }, []);

  const updatePassword = useCallback((event) => {
    setPassword(event.currentTarget.value);
  }, []);

  return (
    <div className="login-form-container">
      <form className="login-form-box" onSubmit={handleSubmit}>
        <p>
          Welcome to Bench Bnb. Please <Link to="/login">log in</Link>
          {" or "}
          <Link to="/signup">sign up</Link>
        </p>

        <div className="login-form">
          <label>
            Username:
            <input
              onChange={updateUsername}
              type="text"
              value={username}
            ></input>
          </label>

          <label>
            Password:
            <input
              onChange={updatePassword}
              type="text"
              value={password}
            ></input>
          </label>

          <button className="submit-button" type="submit">
            Submit
          </button>
        </div>
      </form>
    </div>
  );
};

export default SessionForm;
