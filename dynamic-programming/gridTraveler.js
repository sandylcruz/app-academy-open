/*
Say you're a traveler on a 2d grid. You begin in top-left
corner and your goal is to travel to the bottom-right corner.
You may only move down or right.

In how many ways can you travel to the goal on a grid with 
dimensions m*n?

Write a function `gridTraveler(m,n)` that calculates this

*/

/*
Height of tree: n + m (subtract n or m to reach the bottom)
Brute force:
O(2^n+m) time
O(n + m) space
*/

const gridTraveler1 = (m, n) => {
  if (m === 0 || n === 0) return 0;
  if (m === 1 && n === 1) return 1;

  return gridTraveler1(m - 1, n) + gridTraveler1(m, n - 1);
};

// // memoized version
/*

Possible values:
m choices in first node, n choices in second choices
m: { 0, 1, 2, 3, 4 }
n: {0, 1, 2, 3}

O(m * n) time
O(n + m) space

total max distinct nodes: m * n possible combinations
*/

const gridTraveler = (m, n, memo = {}) => {
  // are the arguments in the memo
  const key = m + ',' + n;
  if (key in memo) return memo[key];

  if (m === 0 || n === 0) return 0;
  if (m === 1 && n === 1) return 1;

  memo[key] = gridTraveler(m - 1, n, memo) + gridTraveler(m, n - 1, memo);
  return memo[key];
};

const gridTraveler = (m, n, memo = {}) => {
  const key = m + ',' + n;

  if (memo[key]) return memo[key];
  if (n === 0 || m === 0) return 0;
  if (n === 1 && m === 1) return 1;

  memo[key] = gridTraveler(m - 1, n, memo) + gridTraveler(m, n - 1, memo);
  return memo[key];
};

console.log(gridTraveler(1, 1)); // 1
console.log(gridTraveler(2, 3)); // 3
console.log(gridTraveler(3, 2)); // 3
console.log(gridTraveler(3, 3)); // 6
console.log(gridTraveler(18, 18)); //
