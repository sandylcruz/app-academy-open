/*

Write a function that accepts a target string and an array of strings.

The function should return a 2d array containing all the ways that the target can be
constructed by concatenating elements of the word bank array. Each el of the 2d array
should represent one combination that constructs the target.

You may reuse elements of wordbank as many times as needed.

m = target.length
n = wordBank.length



time: 
space:

*/

const allConstructSlow = (target, wordBank) => {
  if (target === '') return [[]];
  const result = [];

  for (let i = 0; i < wordBank.length; i++) {
    const word = wordBank[i];

    if (target.indexOf(word) === 0) {
      const suffix = target.slice(word.length);
      const suffixWays = allConstruct(suffix, wordBank);
      const targetWays = suffixWays.map((way) => [word, ...way]);
      result.push(...targetWays);
    }
  }

  return result;
};

/*

m = target.length (height)
n = wordBank.length
from one node ot the next, we multiply n by m

O(n^m )leaves so O(n^m) combinations so we need O(n^m) subarrays in the output 
result has to be exponential in size

time: O(n^m)
space: O(m) height of the recursion tree
-- don't include size of the result in space complexity (which would be exponential
  in space)
*/

const allConstruct = (target, wordBank, memo = {}) => {
  if (target in memo) return memo[target];
  if (target === '') return [[]];
  const result = [];

  for (let i = 0; i < wordBank.length; i++) {
    const word = wordBank[i];

    if (target.indexOf(word) === 0) {
      const suffix = target.slice(word.length);
      const suffixWays = allConstruct(suffix, wordBank, memo);
      const targetWays = suffixWays.map((way) => [word, ...way]);
      result.push(...targetWays);
      memo[target] = targetWays;
    }
  }

  memo[target] = result;
  return result;
};

console.log(allConstruct('purple', ['purp', 'p', 'ur', 'le', 'purpl'])); // =>
// [['purp', 'le'],['p', 'ur', 'p', 'le']]

console.log(
  allConstruct('abcdef', ['ab', 'abc', 'cd', 'def', 'abcd', 'ef', 'c'])
); // =>
/*
[
  ['ab', 'cd', 'ef'],
  ['ab', 'c', 'def'],
  ['abc', 'def'],
  ['abcd', 'ef'],
]
*/

console.log(
  allConstruct('skateboard', ['bo', 'rd', 'ate', 't', 'ska', 'sk', 'boar'])
); // []

console.log(
  allConstruct('aaaaaaaaaaaaaz', ['a', 'aa', 'aaa', 'aaaa', 'aaaaa'])
); // []
