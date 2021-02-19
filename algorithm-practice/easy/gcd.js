/*
Given a list of positive integers nums, return the largest 
positive integer that divides each of the integers.
*/

function gcd(array) {
  let commonDivisors = [];
  let greatestDivisor = 1;

  for (let i = 0; i < array.length; i++) {
    let num = array[i];

    for (let j = 0; j < num; j++) {
      if (num % j === 0) {
        commonDivisors.push(j);
      }
    }
  }

  return commonDivisors.sort();

}
console.log(gcd([6, 12, 9]));



function eat() {}
eat()


def sleep
  1
end

x = sleep
puts x == puts sleep;

function makeCat(name) { // traditional function
  return {
    name: name
  };
}

const makeCat = (name) => { // arrow function
  return {
    name: name
  };
}

const makeCat = (name) => ({ // implicit return object
  name: name
});

const makeNum = (num) => 1; // implicit return of 1

const anonymous = function() {} // anonymous function to refer to later

function nonAnonymous() { // non-anonymous es5
  
  const myArrow = () => {
    
  }

  return myArrow() // nonanonymous return value of myArrow when invoked

}

console.log(nonAnonymous()) // log function invocation
console.log(makeCat) // log function itself