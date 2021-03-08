import React from "react";
import ReactDOM from "react-dom";
import Clock from "./clock";
import Tabs from "./tabs";

const tabs = [
  { title: "One", content: "First pane here" },
  { title: "Two", content: "Second pane here" },
  { title: "Three", content: "Third pane here" },
];

function Root() {
  return (
    <div>
      <Clock />
      <Tabs tabs={tabs} />
    </div>
  );
}

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(<Root />, document.getElementById("main"));
});
