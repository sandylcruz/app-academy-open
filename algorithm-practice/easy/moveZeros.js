/*
Given a list of integers nums, put all the 
zeros to the back of the list by modifying 
the list in-place. The relative ordering 
of other elements should stay the same.
*/

function moveZeros(array) {
  for (let i = 0; i < array.length; i++) {
    if (array[i] === 0) {
      console.log("zero");
      // array.shift(array[i]);
    }
  }

  return array;
}
console.log(moveZeros([1, 2, 0, 3, 4, 0, 5]));
