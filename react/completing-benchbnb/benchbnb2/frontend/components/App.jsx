import React from "react";
import GreetingContainer from "./greeting/greeting_container.js";
import SignupFormContainer from "./session-form/signup_form_container.jsx";
import LoginFormContainer from "./session-form/login_form_container.jsx";
import { Route } from "react-router-dom";
import { AuthRoute } from "../util/route_util.js";
import BenchShowContainer from "./bench_show/bench_index_container.js";

const App = () => (
  <div>
    <header>
      <h1>Bench Bnb</h1>
      <GreetingContainer />
    </header>

    <AuthRoute exact path="/login" component={LoginFormContainer} />
    <AuthRoute exact path="/signup" component={SignupFormContainer} />

    <Route path="/benches/:benchId" component={BenchShowContainer} />
  </div>
);

export default App;
