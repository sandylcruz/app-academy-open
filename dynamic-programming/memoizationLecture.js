// O(n) time
// O(n) space
const foo = (n) => {
  if (n <= 1) return;
  return foo(n - 1);
};

// O(n) time
// O(n) space
const bar = (n) => {
  if (n <= 1) return;
  bar(n - 2);
};

// two recursive calls
// height = n; height of this tree is n (distance from root to furthest node)
// num levels = n; level is collection of nodes so
// O(2^n) time
// O(n) space

const dib = (n) => {
  if (n <= 1) return;
  dib(n - 1);
  dib(n - 1);
};

// recursive fib
// O(2^n) time
// complexity of fib is between dib and nib
/*
bottle neck for fib is the number of recursive calls

*/
const fib = (num) => {
  if (num <= 2) return 1;
  return fib(num - 1) + fib(num - 2);
};

/*
Time:
- O(2^n/2) time simplified => 
- O(2^n)
- every level doubles the number of nodes
- height of n/2

Space:
- O(n/2) simplified as 
- O(n)
*/
const lib = (n) => {
  if (n <= 1) return;
  lib(n - 2);
  lib(n - 2);
};

const iterativeFib = (number) => {
  if (number <= 2) return 1;

  let previousValue = 1;
  let value = 2;

  for (let i = 1; i < number; i++) {
    const nextValue = previousValue + value;
    previousValue = value;
    value = nextValue;
  }

  return value;
};
