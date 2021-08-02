/*
O(n) time
O(n) space
*/

const fib = (n, memo = {}) => {
  if (memo[n]) return memo[n];
  if (n <= 2) return 1;

  memo[n] = fib(n - 1, memo) + fib(n - 2, memo);
  return memo[n];
};

console.log(fib(6));
console.log(fib(7));
console.log(fib(8));
console.log(fib(500));
