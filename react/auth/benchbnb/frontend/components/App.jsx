import React from "react";
import GreetingContainer from "./greeting/greeting_container.js";
import SignupFormContainer from "./session-form/signup_form_container.jsx";
import LoginFormContainer from "./session-form/login_form_container.jsx";
import { Route } from "react-router-dom";

const App = () => (
  <div>
    <header>
      <h1>Bench Bnb</h1>
      <GreetingContainer />
    </header>

    <Route path="/login" component={LoginFormContainer} />
    <Route path="/signup" component={SignupFormContainer} />
  </div>
);

export default App;
