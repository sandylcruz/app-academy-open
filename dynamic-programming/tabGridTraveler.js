/*
use current position element and add it to its neighbor
if there's a 1x1 grid, there's only one way to travel
set default value for [1, 1] to be 1
*/

const gridTraveler = (m, n) => {
  let table = new Array(m + 1).fill().map(() => Array(n + 1).fill(0));

  table[1][1] = 1;

  for (let i = 0; i <= m; i++) {
    for (let j = 0; j <= n; j++) {
      const current = table[i][j];

      if (j + 1 <= n) {
        table[i][j + 1] += current;
      }

      if (i + 1 <= m) {
        table[i + 1][j] += current;
      }
    }
  }

  return table[m][n];
};

console.log(gridTraveler(1, 1));
console.log(gridTraveler(2, 3));
console.log(gridTraveler(3, 2));
console.log(gridTraveler(3, 3));
console.log(gridTraveler(18, 18));
