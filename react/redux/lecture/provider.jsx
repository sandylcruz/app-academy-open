// root.jsx

import React from "react";
import { Provider } from "react-redux";
import App from "./app.jsx";

const Root = ({ store }) => (
  <Provider store={store}>
    <App />
  </Provider>
);

export default Root;
/*  In entry, we'll render Roots component which passes
    store to all nested components 'invisibly */

// entry.jsx //
import React from "react";
import ReactDOM from "react-dom";

import { createStore } from "redux";
// store is created in entry file
import reducer from "./reducer.js";
import Root from "./root.jsx";

document.addEventListener("DOMContentLoaded", () => {
  const store = createStore(reducer);
  /*  Provider receives store as a prop
      Provider sets store context which is 
      passed to all of its children
      Components that need access store context will 
      have access to connect(), which converts store 
      context into store prop

  */
  const rootEl = document.getElementById("root");
  ReactDOM.render(<Root store={store} />, rootEl);
});
