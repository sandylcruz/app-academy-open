function makeCat(name) {
  // traditional function
  return {
    name: name,
  };
}

const makeCat = (name) => {
  // arrow function
  return {
    name: name,
  };
};

const makeCat = (name) => ({
  // implicit return object
  name: name,
});

const makeNum = (num) => 1; // implicit return of 1

const anonymous = function () {}; // anonymous function to refer to later

function nonAnonymous() {
  // non-anonymous es5

  const myArrow = () => {};

  return myArrow(); // nonanonymous return value of myArrow when invoked
}

console.log(nonAnonymous()); // log function invocation
console.log(makeCat); // log function itself
