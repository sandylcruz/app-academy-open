import React from "react";
import GreetingContainer from "./greeting/greeting_container.js";
import SignupFormContainer from "./session-form/signup_form_container.jsx";
import LoginFormContainer from "./session-form/login_form_container.jsx";
import { Route } from "react-router-dom";
import { AuthRoute } from "../util/route_util.js";
import BenchIndexItem from "./bench_index/bench_index_item.jsx";
import SearchContainer from "./search/search_container.js";

const App = () => (
  <div>
    <header>
      <h1>Bench Bnb</h1>
      <GreetingContainer />
    </header>

    <AuthRoute exact path="/login" component={LoginFormContainer} />
    <AuthRoute exact path="/signup" component={SignupFormContainer} />

    <Route exact path="/" component={SearchContainer} />
    <Route exact path="/benches/:id" component={BenchIndexItem} />
  </div>
);

export default App;
