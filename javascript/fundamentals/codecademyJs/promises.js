// Constructing a promise
const inventory = {
  sunglasses: 1900,
  pants: 1088,
  bags: 1344,
};

// Write your code below:
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

//
