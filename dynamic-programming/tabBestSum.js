/*
m = targetSum
n = numbers.length;

time: O(m^2n)
space: O(m^2)
*/

const bestSum = (targetSum, numbers) => {
  const table = new Array(targetSum + 1).fill(null);
  table[0] = [];

  for (let i = 0; i <= targetSum; i++) {
    if (table[i] !== null) {
      numbers.forEach((num) => {
        const combination = [...table[i], num];

        if (!table[i + num] || combination.length < table[i + num].length) {
          table[i + num] = combination;
        }
      });
    }
  }

  return table[targetSum];
};

console.log(bestSum(8, [2, 3, 5])); // [3, 5] or [5, 3]
console.log(bestSum(8, [2, 3, 5]));
console.log(bestSum(8, [1, 4, 5]));
console.log(bestSum(100, [1, 2, 25, 5]));
