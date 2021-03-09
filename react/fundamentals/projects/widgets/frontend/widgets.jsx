import React from "react";
import ReactDOM from "react-dom";
import Clock from "./clock";
import Tabs from "./tabs";
import Weather from "./weather";

const tabs = [
  { title: "One", content: "I am the first" },
  { title: "Two", content: "Second pane here" },
  { title: "Three", content: "Third pane here" },
];

function Root() {
  return (
    <div>
      <Clock />
      <Weather />
      <Tabs tabs={tabs} />
    </div>
  );
}

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(<Root />, document.getElementById("main"));
});
