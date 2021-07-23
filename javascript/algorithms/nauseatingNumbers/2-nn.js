/*
Write a method anti_prime? that accepts a number as an argument. 
The method should return true if the given number has 
more divisors than all positive numbers less than the 
given number. For example, 24 is an anti-prime because 
it has more divisors than any positive number less than 24. 
Math Fact: Numbers that meet this criteria are also known 
as highly composite numbers.

Examples

p anti_prime?(24)   # true
p anti_prime?(36)   # true
p anti_prime?(48)   # true
p anti_prime?(360)  # true
p anti_prime?(1260) # true
p anti_prime?(27)   # false
p anti_prime?(5)    # false
p anti_prime?(100)  # false
p anti_prime?(136)  # false
p anti_prime?(1024) # false
*/

function isAntiPrime() {}

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

matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]
*/

function matrixAddition() {}

/*
mutual_factors
Write a method mutual_factors that accepts any amount of 
numbers as arguments. The method should return an array 
containing all of the common divisors shared among the 
arguments. For example, the common divisors of 50 and 
30 are 1, 2, 5, 10. You can assume that all of the arguments 
are positive integers.
*/

function mutualFactors() {
  const factors = [];

  return factors;
}

console.log(mutual_factors(50, 30)); // [1, 2, 5, 10]
console.log(mutual_factors(50, 30, 45, 105)); // [1, 5]
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

console.log(tribonacciNumber(1)); // 1
console.log(tribonacciNumber(2)); // 1
console.log(tribonacciNumber(3)); // 2
console.log(tribonacciNumber(4)); // 4
console.log(tribonacciNumber(5)); // 7
console.log(tribonacciNumber(6)); // 13
console.log(tribonacciNumber(7)); // 24
console.log(tribonacciNumber(11)); // 274
