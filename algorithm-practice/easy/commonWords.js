/* 
Given two strings s0 and s1, each representing a sentence, 
return the number of unique words that are shared between 
the two sentences
*/

function commonWords(sentence1, sentence2) {
  sentence1Array = sentence1.split(" ");
  sentence2Array = sentence2.split(" ");
  let count = 0;

  for (let i = 0; i < sentence1Array.length; i++) {
    for (let j = 0; j < sentence2Array.length; j++) {
      if (sentence1Array[i] === sentence2Array[j]) {
        count += 1;
      }
    }
  }

  return count;
}

console.log(commonWords("hello world hello oyster", "world is your oyster"));
