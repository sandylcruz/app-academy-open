// filter, map, reduce, selectors, dynamic key addition to objects, how to iterate over objects (Object.keys)

// Creates a new array with all elements that pass the test
// implemented by provided function
function myFilter(array, func) {
  const filteredValues = [];

  for (let i = 0; i < array.length; i++) {
    const result = func(array[i]);
    if (result) {
      filteredValues.push(array[i]);
    }
  }

  return filteredValues;
}
const array = [1, 2, 3];
console.log(myFilter(array, (number) => number % 2 === 0));

// Creates a new array with results of calling provided
// function on every element in the calling array. Length of new
// array is equal to starting array

function myMap(array) {
  const resultsArray = [];

  for (let i = 0; i < array.length; i++) {
    resultsArray.push(array[i]);
  }

  return resultsArray;
}
// const array = [1, 2, 3];
// console.log(myMap(array, (number) => number * 2));

// const myReduce = function (array) {

// };
