/*
Given a lowercase alphabet string s, return a string with 
all the vowels of s in sorted order followed by all the 
consonants of s in sorted order.
*/

function solve(s) {
  let vowels = "";
  let consonants = "";

  for (let i = 0; i < string.length; i++) {
    if (
      s[i] === "a" ||
      s[i] === "e" ||
      s[i] === "i" ||
      s[i] === "o" ||
      s[i] === "u"
    ) {
      let vowelToMove = s[i];
      vowels += vowelToMove;
    } else {
      consonants += s[i];
    }
  }

  return vowels + consonants;
}

console.log(vowelConsonantSort("decallin"));
// console.log(vowelConsonantSort("callie"));

//
