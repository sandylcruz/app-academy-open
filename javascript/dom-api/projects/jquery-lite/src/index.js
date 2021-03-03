const DOMNodeCollection = require("./dom_node_collection.js");

function $l(argument) {
  if (typeof argument === "string") {
    const foundElements = document.querySelectorAll(argument);
    const foundElementsArray = Array.from(foundElements);
    const collection = new DOMNodeCollection(foundElementsArray);
    return collection;
  } else if (argument instanceof HTMLElement) {
    return new DOMNodeCollection([argument]);
  }
}

window.$l = $l;
