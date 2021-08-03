/*
table length is based off target string not word bank
because we're never removing els from word bank

table[0] is the empty string
*/

const canConstruct = (target, wordBank) => {
  const table = new Array(target.length + 1).fill(false);
  table[0] = true;

  for (let i = 0; i < target.length; i++) {
    if (table[i] === true) {
      // iterate through every word of word bank
      for (let word of wordBank) {
        // if word matches the chars starting at position i
        // if i = 0, slice is "abc"
        if (target.slice(i, i + word.length) === word) {
          table[i + word.length] = true;
        }
      }
    }
  }

  return table[target.length];
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
