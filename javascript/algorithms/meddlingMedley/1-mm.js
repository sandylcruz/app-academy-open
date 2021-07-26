/*
Write a method duos that accepts a string as an argument and 
returns the count of the number of times the same character 
appears consecutively in the given string.

p duos('bootcamp')      # 1
p duos('wxxyzz')        # 2
p duos('hoooraay')      # 3
p duos('dinosaurs')     # 0
p duos('e')             # 0
*/

function duos(string) {
  const chars = string.split('');
  let count = 0;

  for (let i = 0; i < chars.length; i++) {
    if (chars[i] === chars[i + 1]) {
      count += 1;
    }
  }

  return count;
}
// console.log(duos('bootcamp')); // 1
// console.log(duos('wxxyzz')); // 2
// console.log(duos('hoooraay')); // 3
// console.log(duos('dinosaurs')); // 0
// console.log(duos('e')); // 0

/*
Write a method sentence_swap that accepts a sentence and 
a hash as arguments. The method should return a new sentence 
where every word is replaced with its corresponding value 
in the hash. If a word does not exist as a key of the hash, 
then it should remain unchanged.

p sentence_swap('anything you can do I can do',
    'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
) # 'nothing you shall drink I shall drink'

p sentence_swap('what a sad ad',
    'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'
) # 'make a happy ad'

p sentence_swap('keep coding okay',
    'coding'=>'running', 'kay'=>'pen'
) # 'keep running okay'
*/

function sentence_swap(sentence, hash) {
  const words = sentence.split(' ');
  const array = [];

  words.forEach((word) => {
    if (word in hash) {
      array.push(hash[word]);
    } else {
      array.push(word);
    }
  });

  return array.join(' ');
}

// console.log(
//   sentence_swap('anything you can do I can do', {
//     anything: 'nothing',
//     do: 'drink',
//     can: 'shall',
//   })
// ); // 'nothing you shall drink I shall drink'

// console.log(
//   sentence_swap('what a sad ad', { cat: 'dog', sad: 'happy', what: 'make' })
// ); // 'make a happy ad'

// console.log(
//   sentence_swap('keep coding okay', { coding: 'running', kay: 'pen' })
// ); // 'keep running okay'

/*
Write a method hash_mapped that accepts a hash, a proc, 
and a block. The method should return a new hash where 
each key is the result of the original key when given to 
the block. Each value of the new hash should be the result 
of the original values when passed into the proc.

double = Proc.new { |n| n * 2 }
p hash_mapped({'a'=>4, 'x'=>7, 'c'=>-3}, double) { |k| k.upcase + '!!' }
# {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

first = Proc.new { |a| a[0] }
p hash_mapped({-5=>['q', 'r', 's'], 6=>['w', 'x']}, first) { |n| n * n }
# {25=>"q", 36=>"w"}

*/

function hashMapped() {}

/*
Write a method counted_characters that accepts a string as an 
argument. The method should return an array containing the 
characters of the string that appeared more than twice. The 
characters in the output array should appear in the same 
order they occur in the input string.
*/

function counted_characters(string) {
  const chars = string.split('');
  const counter = {};
  const duplicates = [];

  chars.forEach((char) => {
    if (char in counter) {
      counter[char] += 1;
    } else {
      counter[char] = 1;
    }
  });

  // console.log(counter);

  return Object.keys(counter).filter((el) => counter[el] > 2);
}

// console.log(counted_characters("that's alright folks")); // ["t"]
// console.log(counted_characters('mississippi')); // ["i", "s"]
// console.log(counted_characters('hot potato soup please')); // ["o", "t", " ", "p"]
// console.log(counted_characters('runtime')); // []

/*
Write a method triplet_true? that accepts a string as an 
argument and returns a boolean indicating whether or not the 
string contains three of the same character consecutively.

*/

function triplet_true(string) {
  let counter = {};
  const chars = string.split('');

  for (let i = 0; i < chars.length; i++) {
    let currentChar = chars[i];
    let nextChar = chars[i + 1];

    if (currentChar === nextChar && currentChar in counter) {
      counter[currentChar] += 1;
    } else if (currentChar === nextChar && !(currentChar in counter)) {
      counter[currentChar] = 2;
    }
  }

  for (char in counter) {
    if (counter[char] >= 3) {
      return true;
    }
  }
  return false;
}

// console.log(triplet_true('caaabb')); // true
// console.log(triplet_true('terrrrrible')); // true
// console.log(triplet_true('runninggg')); // true
// console.log(triplet_true('bootcamp')); // false
// console.log(triplet_true('e')); // false

/*
Write a method energetic_encoding that accepts a string and a 
hash as arguments. The method should return a new string 
where characters of the original string are replaced with 
the corresponding values in the hash. If a character is not 
a key of the hash, then it should be replaced with a question 
mark ('?'). Space characters (' ') should remain unchanged.

*/

function energetic_encoding(string, object) {
  const chars = string.split('');
  let newStringArray = [];

  chars.forEach((char) => {
    if (char in object) {
      newStringArray.push(object[char]);
    } else if (char === ' ') {
      newStringArray.push(' ');
    } else {
      newStringArray.push('?');
    }
  });

  return newStringArray.join('');
}

// console.log(
//   energetic_encoding('sent sea', {
//     e: 'i',
//     s: 'z',
//     n: 'm',
//     t: 'p',
//     a: 'u',
//   })
// ); // 'zimp ziu'

// console.log(energetic_encoding('cat', { a: 'o', c: 'k' })); // 'ko?'
// console.log(energetic_encoding('hello world', { o: 'i', l: 'r', e: 'a' })); // '?arri ?i?r?'
// console.log(energetic_encoding('bike', {})); // '????'

/*
Write a method uncompress that accepts a string as an argument. 
The string will be formatted so every letter is followed by 
a number. The method should return an "uncompressed" version 
of the string where every letter is repeated multiple times 
given based on the number that appears directly after the 
letter.

*/

const uncompress = (string) => {
  let segments = [];
  let stringToReturn = [];

  for (let i = 0; i < string.length; i += 2) {
    segments.push(string.substring(i, i + 2));
  }

  segments.forEach((segment) => {
    const char = segment[0];
    const numTimes = segment[1];
    const repetition = char.repeat(numTimes);

    stringToReturn.push(repetition);
  });

  return stringToReturn.join('');
};

console.log(uncompress('a2b4c1')); // 'aabbbbc'
console.log(uncompress('b1o2t1')); // 'boot'
console.log(uncompress('x3y1x2z4')); // 'xxxyxxzzzz'
