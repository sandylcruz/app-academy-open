/*
Given a lowercase alphabet string s, return a string with 
all the vowels of s in sorted order followed by all the 
consonants of s in sorted order.
*/

function vowelConsonantSort(string) {
  let vowels = "";
  let consonants = "";

  for (let i = 0; i < string.length; i++) {
    if (
      string[i] === "a" ||
      string[i] === "e" ||
      string[i] === "i" ||
      string[i] === "o" ||
      string[i] === "u"
    ) {
      let vowelToMove = string[i];
      vowels += vowelToMove;
    } else {
      consonants += string[i];
    }
  }

  return vowels + consonants;
}

console.log(vowelConsonantSort("decallin"));
console.log(vowelConsonantSort("callie"));

//
