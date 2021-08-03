/*

Function should return a boolean indicating whether or not it is possible to generate targetSum
using nums from array.

You may use an el of array as many times as needed.

You may assume all input numbers are nonnegative

Think about what's going to change about the problem
not shrinking size of array
we're shrinking target
table - create array that's roughly size of target sum

we're returning a boolean at end, so initialize array with all false values

0 is base case. to generate 0, we add no elements of array
populate table[0] to be always true

populate table[5] to be true because you can generate 5 from the array by itself

if current el is false, it is not possible to generate anything from the given array so we move to next
ex. table[1] = false

if current el is true,

element stored at least position of table determines if the algo is true or not

if you look at indices that are true, then true


m = targetSum
n = numbers.length

time: O(mn)
space: O(m) - based on table

*/

const canSum = (targetSum, numbers) => {
  const table = new Array(targetSum + 1).fill(false);

  table[0] = true;

  for (let i = 0; i <= table.length; i++) {
    if (table[i] === true) {
      // jump ahead if current el is true
      numbers.forEach((num) => {
        // if current pos is reachable, and i can take a step of exactly num, then position i+ num is reachable

        if (table[i + num] <= table.length) {
          table[i + num] = true;
        }
      });
    }
  }
  return table[targetSum];
};
console.log(canSum(7, [2, 3])); // true
console.log(canSum(7, [5, 3, 4, 7])); // true
console.log(canSum(7, [2, 4])); // false
console.log(canSum(8, [2, 3, 5])); // true
console.log(canSum(300, [7, 14])); // false
