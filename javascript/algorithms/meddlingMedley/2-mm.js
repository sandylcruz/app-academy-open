/*
Write a method conjunct_select that accepts an array and 
one or more procs as arguments. The method should return a 
new array containing the elements that return true when 
passed into all of the given procs.

is_positive = Proc.new { |n| n > 0 }
is_odd = Proc.new { |n| n.odd? }
less_than_ten = Proc.new { |n| n < 10 }

p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive) # [4, 8, 11, 7, 13]
p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd) # [11, 7, 13]
p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd, less_than_ten) # [7]

*/

function conjunctSelect() {}

/*
Write a method convert_pig_latin that accepts a sentence as 
an argument. The method should translate the sentence 
according to the following rules:

words that are shorter than 3 characters are unchanged
words that are 3 characters or longer are translated according 
to the following rules:
if the word begins with a vowel, simply add 'yay' to the end 
of the word (example: 'eat'->'eatyay')
if the word begins with a non-vowel, move all letters that 
come before the word's first vowel to the end of the word 
and add 'ay' (example: 'trash'->'ashtray')


*/

const getPrefix = (string) => {
  let stringToReturn = [];

  for (let i = 0; i < string.length; i++) {
    let currentChar = string[i];
    if (
      currentChar !== 'a' &&
      currentChar !== 'e' &&
      currentChar !== 'i' &&
      currentChar !== 'o' &&
      currentChar !== 'u'
    ) {
      stringToReturn.push(currentChar);
    } else {
      return stringToReturn.join('');
    }
  }
  return stringToReturn.join('');
};

function convert_pig_latin(sentence) {
  const words = sentence.split(' ');
  let stringToReturn = [];

  words.forEach((word) => {
    if (word.length < 3) {
      stringToReturn.push(word);
    } else if (
      word[0] === 'a' ||
      word[0] === 'e' ||
      word[0] === 'i' ||
      word[0] === 'o' ||
      word[0] === 'u'
    ) {
      const newWord = (word += 'yay');
      stringToReturn.push(newWord);
    } else {
      let prefix = getPrefix(word);
      const endOfWord = word.slice(prefix.length);
      const newWord = endOfWord;
      stringToReturn.push(newWord + prefix + 'ay');
    }
  });

  return stringToReturn.join(' ');
}

// console.log(convert_pig_latin('We like to eat bananas')); // "We ikelay to eatyay ananasbay"
// console.log(convert_pig_latin('I cannot find the trash')); // "I annotcay indfay ethay ashtray"
// console.log(convert_pig_latin('What an interesting problem')); // "Atwhay an interestingyay oblempray"
// console.log(convert_pig_latin('Her family flew to France')); // "Erhay amilyfay ewflay to Ancefray"
// console.log(convert_pig_latin('Our family flew to France')); // "Ouryay amilyfay ewflay to Ancefray"

/*
Write a method reverberate that accepts a sentence as an 
argument. The method should translate the sentence according 
to the following rules:

words that are shorter than 3 characters are unchanged
words that are 3 characters or longer are translated according 
to the following rules:
if the word ends with a vowel, simply repeat the word twice 
(example: 'like'->'likelike')
if the word ends with a non-vowel, repeat all letters that 
come after the word's last vowel, including the last vowel 
itself (example: 'trash'->'trashash')



*/

const getLastVowelIndex = (word) => {
  let lastVowelIndex = null;

  for (let i = 0; i < word.length; i++) {
    let currentChar = word[i];

    if (
      currentChar === 'a' ||
      currentChar === 'e' ||
      currentChar === 'i' ||
      currentChar === 'o' ||
      currentChar === 'u'
    ) {
      lastVowelIndex = i;
    }
  }

  return lastVowelIndex;
};

function reverberate(sentence) {
  const words = sentence.split(' ');

  const sentenceToReturn = [];

  words.forEach((word) => {
    if (word.length < 3) {
      sentenceToReturn.push(word);
    } else if (
      word[word.length - 1] === 'a' ||
      word[word.length - 1] === 'e' ||
      word[word.length - 1] === 'i' ||
      word[word.length - 1] === 'o' ||
      word[word.length - 1] === 'u'
    ) {
      sentenceToReturn.push(word + word.toLowerCase());
    } else {
      const lastVowelIndex = getLastVowelIndex(word);
      let suffix = word.slice(lastVowelIndex);
      sentenceToReturn.push(word + suffix);
    }
  });

  return sentenceToReturn.join(' ');
}

// console.log(reverberate('We like to go running fast')); // "We likelike to go runninging fastast"
// console.log(reverberate('He cannot find the trash')); // "He cannotot findind thethe trashash"
// console.log(reverberate('Pasta is my favorite dish')); // "Pastapasta is my favoritefavorite dishish"
// console.log(reverberate('Her family flew to France')); // "Herer familyily flewew to Francefrance"

/*
Write a method disjunct_select that accepts an array and 
one or more procs as arguments. The method should return 
a new array containing the elements that return true when 
passed into at least one of the given procs.

longer_four = Proc.new { |s| s.length > 4 }
contains_o = Proc.new { |s| s.include?('o') }
starts_a = Proc.new { |s| s[0] == 'a' }

p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
    longer_four,
) # ["apple", "teeming"]

p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
    longer_four,
    contains_o
) # ["dog", "apple", "teeming", "boot"]

p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
    longer_four,
    contains_o,
    starts_a
) # ["ace", "dog", "apple", "teeming", "boot"]

*/

function disjunctSelect() {}

/*
Write a method alternating_vowel that accepts a sentence as 
an argument. The method should return a new sentence where 
the words alternate between having their first or last vowel 
removed. For example:

the 1st word should be missing its first vowel
the 2nd word should be missing its last vowel
the 3rd word should be missing its first vowel
the 4th word should be missing its last vowel
... and so on

p alternating_vowel('panthers are great animals') # "pnthers ar grat animls"
p alternating_vowel('running panthers are epic') # "rnning panthrs re epc"
p alternating_vowel('code properly please') # "cde proprly plase"
p alternating_vowel('my forecast predicts rain today') # "my forecst prdicts ran tday"

*/

function alternatingVowel(sentence) {}

/*
Write a method silly_talk that accepts a sentence as an 
argument. The method should translate each word of the 
sentence according to the following rules:

if the word ends with a vowel, simply repeat that vowel at the 
end of the word (example: 'code'->'codee')
if the word ends with a non-vowel, every vowel of the word 
should be followed by 'b' and that same vowel 
(example: 'siren'->'sibireben')

p silly_talk('Kids like cats and dogs') # "Kibids likee cabats aband dobogs"
p silly_talk('Stop that scooter') # "Stobop thabat scobooboteber"
p silly_talk('They can code') # "Thebey caban codee"
p silly_talk('He flew to Italy') # "Hee flebew too Ibitabaly"

*/

function sillyTalk() {}

/*
Write a method compress that accepts a string as an argument. 
The method should return a "compressed" version of the 
string where streaks of consecutive letters are translated 
to a single appearance of the letter followed by the number 
of times it appears in the streak. If a letter does not 
form a streak (meaning that it appears alone), then do not 
add a number after it.

p compress('aabbbbc')   # "a2b4c"
p compress('boot')      # "bo2t"
p compress('xxxyxxzzzz')# "x3yx2z4"
*/

function compress() {}
