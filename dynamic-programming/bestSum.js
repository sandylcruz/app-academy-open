/*
Write a function that takes in a targetSum and an array of numbers as arguments.

The function should return an array containing hte shortest combination of numbers that add up
to exactly the targetSum.

If there is a tie for shortest combination, you may return any one of the shortest.
*/

/*
Brute force
time: O(n^m * m)
space: O(m * m) => O(m^2)
-- max depth is m, and we have to stare m for shortestCombination

*/
const bestSumSlow = (targetSum, numbers) => {
  if (targetSum === 0) return [];
  if (targetSum < 0) return null;

  let shortestCombination = null;

  for (let i = 0; i < numbers.length; i++) {
    const num = numbers[i];
    const remainder = targetSum - num;
    const remainderCombination = bestSum(remainder, numbers);

    if (remainderCombination) {
      const combination = [...remainderCombination, num];
      if (
        shortestCombination === null ||
        combination.length < shortestCombination.length
      ) {
        shortestCombination = combination;
      }
    }
  }

  return shortestCombination;
};

/*
Memoized:
m different keys in memo object, still have to branch for every num in array
time: O(m * n * m) => O(m^2 * n)
space: O(m^2)
-- space is mostly coming from memo. memo keys have m possibilities. each key value can be 
    length m

m - targetSum
n - array length

*/

const bestSum = (targetSum, numbers, memo = {}) => {
  if (targetSum in memo) return memo[targetSum];
  if (targetSum === 0) return [];
  if (targetSum < 0) return null;

  let shortestCombination = null;

  for (let i = 0; i < numbers.length; i++) {
    const num = numbers[i];
    const remainder = targetSum - num;
    const remainderCombination = bestSum(remainder, numbers, memo);

    if (remainderCombination) {
      const combination = [...remainderCombination, num];
      if (
        shortestCombination === null ||
        combination.length < shortestCombination.length
      ) {
        shortestCombination = combination;
      }
    }
  }

  memo[targetSum] = shortestCombination;
  return memo[targetSum];
};

console.log(bestSum(7, [5, 3, 4, 7])); // [7]
console.log(bestSum(8, [5, 3, 2])); // [3, 5]
console.log(bestSum(8, [5, 1, 4])); // [4, 4]
console.log(bestSum(100, [5, 1, 2, 25])); // [25, 25, 25, 25]
