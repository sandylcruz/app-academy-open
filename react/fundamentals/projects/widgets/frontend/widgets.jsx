import React from "react";
import ReactDOM from "react-dom";
import Clock from "./clock";
import Tabs from "./tabs";
import Weather from "./weather";
import Autocomplete from "./autocomplete";

const tabs = [
  { title: "One", content: "I am the first" },
  { title: "Two", content: "Second pane here" },
  { title: "Three", content: "Third pane here" },
];

const names = [
  { name: "Callie" },
  { name: "Squeaky" },
  { name: "Linus" },
  { name: "Phoenix" },
  { name: "Stinky" },
];

function Root() {
  return (
    <div>
      <Clock />
      <Weather />
      <Tabs tabs={tabs} />
      <Autocomplete names={names} />
    </div>
  );
}

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(<Root />, document.getElementById("main"));
});
