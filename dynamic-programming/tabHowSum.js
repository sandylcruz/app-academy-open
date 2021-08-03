/*

Return one way to generate the target.

If not possible, return null.

m = targetSum
n = numbers.length

time:
1) have to iterate through table of size (m) -- O(m)
2) for every iteration, we also have to iterate over all numbers in sub array -- O(m * n)
  subarray is at least of length m => O(m^2n)

size:
this is 2d table that holds table and subarrays so it's (Om^2)

time: O(m^2)
*/

const howSum = (targetSum, numbers) => {
  const table = new Array(targetSum + 1).fill(null);

  table[0] = [];

  for (let i = 0; i <= targetSum; i++) {
    if (table[i] !== null) {
      numbers.forEach((num) => {
        table[i + num] = [...table[i], num];
      });
    }
  }
  return table[targetSum];
};
console.log(howSum(7, [2, 3])); // [3, 4], [4, 3]
console.log(howSum(7, [5, 3, 4, 7]));
console.log(howSum(7, [2, 4]));
console.log(howSum(8, [2, 3, 5]));
console.log(howSum(300, [14, 7]));
