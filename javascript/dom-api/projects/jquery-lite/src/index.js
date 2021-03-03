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

  $l.extend(base, ..otherArgs) {
    otherArgs.forEach((otherArg) => {
      base[prop] = otherArgs[prop]
    })
  }

  $l.ajax(options) {
    const defaults = {  
      type: 'application/x-www-form-urlencoded; charset=UTF-8',
      method: "GET",
      url: "",
      success: () => {},
      error: () => {},
      data: ""
    } 
    const request = new XMLHttpRequest();
    request.open(method, url);

    request.onload = function () {
      console.log(xhr.status)
      console.log(xhr.responseType)
      console.log(xhr.response)
    }

    request.send(defaults)
  }
}

window.$l = $l;
