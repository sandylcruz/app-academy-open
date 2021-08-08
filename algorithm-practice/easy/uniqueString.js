/*
Given a lowercase alphabet string s, determine whether it has all unique 
characters.
*/

function uniqueString(string) {
  let uniqueWord = [];

  for (let i = 0; i < string.length; i++) {
    if (!uniqueWord.includes(string[i])) {
      uniqueWord.push(string[i]);
    } else {
      return false;
    }
  }

  return true;
}

console.log(uniqueString('callie'));
console.log(uniqueString('squeak'));
