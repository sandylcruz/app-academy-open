import React from "react";
import ReactDOM from "react-dom";
import Clock from "./clock";
import Tabs from "./tabs";

const tabs = [
  { title: "Tab 1", content: "First pane here" },
  { title: "Tab 2", content: "Second pane here" },
  { title: "Tab 3", content: "Third pane here" },
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
