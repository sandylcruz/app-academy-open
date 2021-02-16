/*
Given a lowercase alphabet string s, return a string with 
all the vowels of s in sorted order followed by all the 
consonants of s in sorted order.
*/

function vowelConsonantSort(string) {
  let vowels = [];
  let consonants = [];

  for (let i = 0; i < string.length; i++) {
    if (
      string[i] === "a" ||
      string[i] === "e" ||
      string[i] === "i" ||
      string[i] === "o" ||
      string[i] === "u"
    ) {
      let vowelToMove = string[i];
      vowels.push(vowelToMove);
    } else {
      consonants.push(string[i]);
    }
  }

  let sortedVowels = vowels.sort();
  let sortedConsonants = consonants.sort();
  let sortedWord = sortedVowels.concat(sortedConsonants);
  return sortedWord.join("");
}

console.log(vowelConsonantSort("decalin"));
// console.log(vowelConsonantSort("callie"));

//
