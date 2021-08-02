/*
Write a function that takes in a targetSum and an array of numbers as arguments

The function should return a boolean indicating whether or not it is possible to generate the 
targetSm using numbers from the array

You may use an element of the array as many times as needed
You may assume that all input numbers are nonnegative

*/

// Decision problem

// brute force
/*
m = target sum
n = array length, root of tree

height: m (number of levels)
branching / number of nodes change from one level to the next: m
space = height of tree;

O(n^m) exponential time
O(m) space
*/

const canSumSlow = (targetSum, numbers) => {
  if (targetSum === 0) return true;
  if (targetSum < 0) return false;

  for (let i = 0; i < numbers.length; i++) {
    const num = numbers[i];
    const remainder = targetSum - num;

    if (canSum(remainder, numbers) === true) {
      return true;
    }
  }

  return false;
};

/*
m = target sum
n = array length

O(m * n) time
O(m) space
*/

const canSum = (targetSum, numbers, memo = {}) => {
  if (targetSum in memo) return memo[targetSum];
  if (targetSum === 0) return true;
  if (targetSum < 0) return false;

  for (let i = 0; i < numbers.length; i++) {
    const num = numbers[i];
    const remainder = targetSum - num;

    if (canSum(remainder, numbers, memo) === true) {
      memo[targetSum] = true;
      return true;
    }
  }

  memo[targetSum] = false;
  return false;
};

console.log(canSum(7, [2, 3])); // true
console.log(canSum(7, [5, 3, 4, 7])); // true
console.log(canSum(7, [2, 4])); // false
console.log(canSum(8, [2, 3, 5])); // true
console.log(canSum(300, [7, 14])); // false
