/*
Write a method anti_prime? that accepts a number as an argument. 
The method should return true if the given number has 
more divisors than all positive numbers less than the 
given number. For example, 24 is an anti-prime because 
it has more divisors than any positive number less than 24. 
Math Fact: Numbers that meet this criteria are also known 
as highly composite numbers.
*/

function isAntiPrime(number) {
  let numberFactorsCount = 0;
  let greatestFactorsCount = 0;
  let lesserNumbers = [];

  for (let i = 0; i <= number; i++) {
    if (number % i === 0) {
      numberFactorsCount += 1;
    }
  }

  for (let i = 1; i < number; i++) {
    lesserNumbers.push(i);
  }

  lesserNumbers.forEach((num) => {
    let currentFactorsCount = 0;

    for (let i = 1; i < num; i++) {
      if (num % i === 0) {
        currentFactorsCount += 1;
      }

      if (currentFactorsCount > greatestFactorsCount) {
        greatestFactorsCount = currentFactorsCount;
      }
    }
  });

  return numberFactorsCount > greatestFactorsCount;
}

// console.log(isAntiPrime(24)); // true
// console.log(isAntiPrime(36)); // true
// console.log(isAntiPrime(48)); // true
// console.log(isAntiPrime(360)); // true
// console.log(isAntiPrime(1260)); // true
// console.log(isAntiPrime(27)); // false
// console.log(isAntiPrime(5)); // false
// console.log(isAntiPrime(100)); // false
// console.log(isAntiPrime(136)); // false
// console.log(isAntiPrime(1024)); // false

/*
Let a 2-dimensional array be known as a "matrix". Write a 
method matrix_addition that accepts two matrices as 
arguments. The two matrices are guaranteed to have the 
same "height" and "width". The method should return a new 
matrix representing the sum of the two arguments. To 
add matrices, we simply add the values at the same positions:

# programmatically
[[2, 5], [4, 7]] + [[9, 1], [3, 0]] => [[11, 6], [7, 7]]

# structurally
2 5  +  9 1  =>  11 6
4 7     3 0      7 7

Examples



p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]
*/

matrix_c = [
  [-1, 0],
  [0, -1],
];
matrix_d = [
  [2, -5],
  [7, 10],
  [0, 1],
];
matrix_e = [
  [0, 0],
  [12, 4],
  [6, 3],
];

matrix_a = [
  [2, 5],
  [4, 7],
];
matrix_b = [
  [9, 1],
  [3, 0],
];

function matrix_addition(array1, array2) {
  const result = [];

  for (let i = 0; i < array1.length; i++) {
    for (let j = 0; j < array2.length; j++) {
      sum = array1[i][j] + array2[i][j];
      result.push(sum);
    }
  }

  return result;
}

// console.log(matrix_addition(matrix_a, matrix_b)); // [[11, 6], [7, 7]]

/*
mutual_factors
Write a method mutual_factors that accepts any amount of 
numbers as arguments. The method should return an array 
containing all of the common divisors shared among the 
arguments. For example, the common divisors of 50 and 
30 are 1, 2, 5, 10. You can assume that all of the arguments 
are positive integers.
*/

const occurMoreThanOnce = (array, numTimes) => {
  let alreadySeen = [];
  let duplicates = {};

  array.forEach((num) => {
    let currentItem = num;

    if (num in duplicates) {
      duplicates[num] += 1;
    } else {
      duplicates[num] = 1;
    }
  });

  return duplicates;
};

// console.log(occurMoreThanOnce([1, 1, 1, 2, 3, 4, 4, 5, 5], 1));

function mutual_factors(...args) {
  const sharedFactors = [];
  const numberOfArgs = args.length;
  let arrayToReturn = [];

  args.forEach((arg) => {
    for (let i = 0; i <= arg; i++) {
      if (arg % i === 0) {
        sharedFactors.push(i);
      }
    }
  });

  let sortedValues = occurMoreThanOnce(sharedFactors);

  for (key in sortedValues) {
    if (sortedValues[key] >= numberOfArgs) {
      arrayToReturn.push(Number(key));
    }
  }

  return arrayToReturn;
  // console.log(arrayToReturn);
  // console.log(sortedValues);
  // return sharedFactors;
}

console.log(mutual_factors(50, 30)); // [1, 2, 5, 10] console.log(mutual_factors(50, 30, 45, 105)); // [1, 5]
console.log(mutual_factors(8, 4)); // [1, 2, 4]
console.log(mutual_factors(8, 4, 10)); // [1, 2]
console.log(mutual_factors(12, 24)); // [1, 2, 3, 4, 6, 12]
console.log(mutual_factors(12, 24, 64)); // [1, 2, 4]
console.log(mutual_factors(22, 44)); // [1, 2, 11, 22]
console.log(mutual_factors(22, 44, 11)); // [1, 11]
console.log(mutual_factors(7)); // [1, 7]
console.log(mutual_factors(7, 9)); // [1]

/*
The tribonacci sequence is similar to that of Fibonacci. 
The first three numbers of the tribonacci sequence are 
1, 1, and 2. To generate the next number of the sequence, 
we take the sum of the previous three numbers. The first 
six numbers of tribonacci sequence are:

1, 1, 2, 4, 7, 13, ... and so on
Write a method tribonacci_number that accepts a number 
argument, n, and returns the n-th number of the tribonacci 
sequence.

*/

function tribonacciNumber(num) {
  if (num === 1) return 1;
  if (num === 2) return 1;
  if (num === 3) return 2;

  return (
    tribonacciNumber(num - 1) +
    tribonacciNumber(num - 2) +
    tribonacciNumber(num - 3)
  );
}

// console.log(tribonacciNumber(1)); // 1
// console.log(tribonacciNumber(2)); // 1
// console.log(tribonacciNumber(3)); // 2
// console.log(tribonacciNumber(4)); // 4
// console.log(tribonacciNumber(5)); // 7
// console.log(tribonacciNumber(6)); // 13
// console.log(tribonacciNumber(7)); // 24
// console.log(tribonacciNumber(11)); // 274
