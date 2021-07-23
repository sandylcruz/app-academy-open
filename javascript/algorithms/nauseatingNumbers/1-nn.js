/*
Write a method strange_sums that accepts an array of numbers 
as an argument. The method should return a count of the 
number of distinct pairs of elements that have a sum of zero. 
You may assume that the input array contains unique elements.
*/

function strange_sums(array) {
  let count = 0;

  for (let i = 0; i < array.length; i++) {
    for (let j = i + 1; j < array.length; j++) {
      if (array[i] + array[j] === 0) {
        count += 1;
      }
    }
  }

  return count;
}

console.log(strange_sums([2, -3, 3, 4, -2])); // 2
console.log(strange_sums([42, 3, -1, -42])); // 1
console.log(strange_sums([-5, 5])); // 1
console.log(strange_sums([19, 6, -3, -20])); // 0
console.log(strange_sums([9])); // 0

/*
Write a method pair_product that accepts an array of numbers 
and a product as arguments. The method should return a 
boolean indicating whether or not a pair of distinct 
elements in the array result in the product when 
multiplied together. You may assume that the input array 
contains unique elements.
*/

function pairProduct(array, target) {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length; j++) {
      if (array[i] * array[j] === target) {
        return true;
      }
    }
  }
  return false;
}

console.log(pairProduct([4, 2, 5, 8], 16)); // true
console.log(pairProduct([8, 1, 9, 3], 8)); // true
console.log(pairProduct([3, 4], 12)); // true
console.log(pairProduct([3, 4, 6, 2, 5], 12)); // true
console.log(pairProduct([4, 2, 5, 7], 16)); // false
console.log(pairProduct([8, 4, 9, 3], 8)); // false
console.log(pairProduct([3], 12)); // false

/*
Write a method rampant_repeats that accepts a string and a 
hash as arguments. The method should return a new string 
where characters of the original string are repeated the 
number of times specified by the hash. If a character does 
not exist as a key of the hash, then it should remain unchanged.

Examples

p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
p rampant_repeats('faarm', {'e'=>3, 'a'=>2})
*/

function rampantRepeats() {}

/*
Write a method perfect_square? that accepts a number as an 
argument. The method should return a boolean indicating 
whether or not the argument is a perfect square. A perfect 
square is a number that is the product of some number 
multiplied by itself. For example, since 64 = 8 * 8 and 
144 = 12 * 12, 64 and 144 are perfect squares; 
35 is not a perfect square.

Examples

p perfect_square(1)     # true
p perfect_square(4)     # true
p perfect_square(64)    # true
p perfect_square(100)   # true
p perfect_square(169)   # true
p perfect_square(2)     # false
p perfect_square(40)    # false
p perfect_square(32)    # false
p perfect_square(50)    # false
*/

function isPerfectSquare() {}

/////
