const DomNodeCollection = require("./dom_node_collection.js");

function $l(argument) {
  if (typeof argument === "string") {
    const foundElements = document.querySelectorAll(argument);
    const foundElementsArray = Array.from(foundElements);
  } else if (argument instanceof HTMLElement) {
    return new DomNodeCollection([argument]);
  }
}

window.$l = $l;
