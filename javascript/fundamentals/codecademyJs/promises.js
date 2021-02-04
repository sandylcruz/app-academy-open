// Constructing a promise
const inventory = {
  sunglasses: 1900,
  pants: 1088,
  bags: 1344,
};

const myExecutor = (resolve, reject) => {
  if (inventory.sunglasses > 0) {
    resolve("Sunglasses order processed.");
  } else {
    reject("That item is sold out.");
  }
};

function orderSunglasses() {
  return new Promise(myExecutor);
}

const orderPromise = orderSunglasses();
console.log(orderPromise);

// setTimeout()
console.log("This is the first line of code in app.js.");

const usingSTO = () => {
  console.log("hi");
};

setTimeout(usingSTO, 15);
console.log("This is the last line of code in app.js.");

// onFulfilled and onRejected
const { checkInventory } = require("./library.js");
const order = [
  ["sunglasses", 1],
  ["bags", 2],
];

// Write your code below:
function handleSuccess(value) {
  console.log(value);
}

function handleFailure(value) {
  console.log(value);
}

checkInventory(order).then(handleSuccess, handleFailure);

const { checkInventory } = require("./library.js");
const order = [
  ["sunglasses", 1],
  ["bags", 2],
];

function handleSuccess(value) {
  console.log(value);
}

function handleFailure(value) {
  console.log(value);
}

checkInventory(order).then(handleSuccess, handleFailure);

//
