/*
Write a function that takes in a targetSum and an array of nums as args

The function should return an array containing any combination of els that add up
to exactly the targetSum. If there is no combination that adds up to targetSum,
return null.

If there are multiple combinations possible, you may return any single one
*/

/*

m = target sum
n = numbers.length

time: O(n^m * m) => (On^m) exponential
space: O(m)
*/

const howSumBruteForce = (targetSum, numbers) => {
  if (targetSum === 0) return [];
  if (targetSum < 0) return null;

  for (let i = 0; i < numbers.length; i++) {
    const num = numbers[i];
    const remainder = targetSum - num;
    const remainderResult = howSum(remainder, numbers);

    if (remainderResult !== null) {
      // it is possible to generate remainder
      return [...remainderResult, num];
    }
  }

  return null;
};

/*
m = target sum
n = numbers.length;

time: O(n * m * m) => O(n *m^2)
space: O(m^2) 
-- (m keys with at word m elements)
-- keys are all unique values. the space increases because of the memo
-- no longer exponential
-- takes up more space than brute force, but the time complexity 
*/

const howSum = (targetSum, numbers, memo = {}) => {
  if (targetSum in memo) return memo[targetSum];
  if (targetSum === 0) return [];
  if (targetSum < 0) return null;

  for (let i = 0; i < numbers.length; i++) {
    const num = numbers[i];
    const remainder = targetSum - num;
    const remainderResult = howSum(remainder, numbers, memo);

    if (remainderResult !== null) {
      // it is possible to generate remainder
      memo[targetSum] = [...remainderResult, num];
      return memo[targetSum];
    }
  }
  console.log(memo);

  memo[targetSum] = null;
  return null;
};

console.log(howSum(7, [2, 3])); // => [3, 2, 2]
// console.log(howSum(7, [5, 3, 4, 7])); // => [3, 4] or [7]
// console.log(howSum(7, [2, 4])); // => null
// console.log(howSum(8, [5, 3, 2])); // => [2, 2, 2, 2] or [3, 5]
// console.log(howSum(7, [4])); // => null
// console.log(howSum(300, [7, 14])); // => null
