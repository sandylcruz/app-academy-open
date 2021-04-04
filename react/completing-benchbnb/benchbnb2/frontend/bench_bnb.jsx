import React from "react";
import ReactDOM from "react-dom";

import configureStore from "./store/store.js";
import Root from "./components/Root";

document.addEventListener("DOMContentLoaded", () => {
  let store;

  if (window.currentUser) {
    const preloadedState = {
      entities: {
        users: { [window.currentUser.id]: window.currentUser },
      },
      session: { id: window.currentUser.id },
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }

  const root = document.getElementById("root");
  ReactDOM.render(<Root store={store} />, root);
});

{
  /* <A>
  <B>
    <C></C>
    //...
    <ZZZZZZZZZ></ZZZZZZZZZ>
  </B>
</A> */
}