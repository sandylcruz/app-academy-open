// madLib;
function madLib(verb, adjective, noun) {
  return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`;
}
// console.log(madLib("make", "best", "guac"));
// console.log(madLib("make", "best", "guac") === "We shall MAKE the BEST GUAC");

// isSubstring

function isSubstring(searchString, subString) {
  return searchString.split(" ").includes(subString);
}
// console.log(isSubstring("Jump for joy", "cats")) === false;
// console.log(isSubstring("cats are the best", "cats")) === true;

// fizzBuzz

function fizzBuzz(array) {
  array.forEach((num) => {
    if (num % 15 === 0) {
      console.log("fizzbuzz");
    } else if (num % 5 === 0) {
      console.log("buzz");
    } else if (num % 3 === 0) {
      console.log("fizz");
    } else {
      console.log(num);
    }
  });
}
// console.log(fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]));

// isPrime

function isPrime(num) {
  for (let i = 2; i < num; i++) {
    if (num % i === 0) {
      return false;
    }
  }
  return true;
}
// console.log(isPrime(2));
// console.log(isPrime(10));
// console.log(isPrime(15485863));
// console.log(isPrime(3548563));

// firstNPrimes

function firstNPrimes(num) {
  const arr = [];
  let i = 2;

  while (arr.length < num) {
    if (num % i === 0) {
      arr.push(i);
    }
    i++;
  }
  console.log(arr);
}
console.log(firstNPrimes(10));

// sumOfNPrimes

// function sumOfNPrimes(n) {}
