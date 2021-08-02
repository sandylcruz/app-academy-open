/*
Write a function that accepts a target string and an array of strings.

Function should return a boolean indicating whether or not the target can be constructed by 
concatenating elements of word bank.

You may reuse elements of word bank as many times as needed
*/

/*
m = target.length
n = wordBank.length

height = m. in worst case, we have to take single characters to make word that is m
branching = dictated by how many words in word bank. if every el in wordbank is matching prefix,
          and every word in wordbank is prefix, we would have to do this m time 
          multiple n to the m

time = O(n^m * m) branching factor (n) and the height factor (n)
space = O(m^2)
  equal to height of tree. max stack frames before we bottom out
*/

const canConstructBruteForce = (target, wordBank) => {
  if (target.length === 0) return true;

  for (let i = 0; i < wordBank.length; i++) {
    const prefix = wordBank[i];
    if (target.indexOf(prefix) === 0) {
      const suffix = target.slice(prefix.length);
      if (canConstruct(suffix, wordBank) === true) {
        return true;
      }
    }
  }

  return false;
};

/*
m = target.length
n = wordBank.length

Time: O(n * m^2) - don't have to fully explore duplicate subtrees. short circuit and fetch stored results
Space: O(m^2) space - still have to do slice
Have removed exponential time complexity
*/

const canConstruct = (target, wordBank, memo = {}) => {
  if (target in memo) return memo[target];
  if (target.length === 0) return true;

  for (let i = 0; i < wordBank.length; i++) {
    const prefix = wordBank[i];
    if (target.indexOf(prefix) === 0) {
      const suffix = target.slice(prefix.length);
      if (canConstruct(suffix, wordBank, memo) === true) {
        // store all previous return calls in memo
        memo[target] = true;
        return true;
      }
    }
  }

  memo[target] = false;
  return false;
};

console.log(canConstruct('abcdef', ['ab', 'abc', 'cd', 'def', 'abcd'])); // true
console.log(
  canConstruct('skateboard', ['bo', 'rd', 'ate', 't', 'ska', 'sk', 'boar'])
); // false
console.log(canConstruct('', ['cat', 'dog', 'mouse'])); // true, take 0 els from array to generate ''
console.log(
  canConstruct('enterapotentpot', ['a', 'p', 'ent', 'enter', 'ot', 'o', 't'])
); // true
console.log(
  canConstruct('eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeef', [
    'e',
    'ee',
    'eee',
    'eeee',
    'eeeee',
    'eeeeee',
  ])
); // false
