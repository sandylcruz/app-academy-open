/*
# Extend the Array class to include a method named `my_each` 
that takes a
# block, calls the block on every element of the array, and 
then returns
# the original array. Do not use Enumerable's `each` method. 

*/

// function myEach(array) {
//   eachArray = [];
//   for (let i = 0; i < array.length; i++) {
//     eachArray.push(array[i]);
//   }

//   return eachArray;
// }

// console.log(myEach([1, 2, 3]));

/*
my_flatten should return all elements of the array into a 
new, one-dimensional array. Hint: use recursion!

[1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]
*/

function myFlatten() {}

/*
Write my_zip to take any number of arguments. It should 
return a new array containing self.length elements. Each 
element of the new array should be an array with a length 
of the input arguments + 1 and contain the merged elements at 
that index. If the size of any argument is less than self, 
nil is returned for that location.

a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
[1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
[1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]

c = [10, 11, 12]
d = [13, 14, 15]
[1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]

*/

function myZip() {}

/*
Write a method my_rotate that returns a new array containing 
all the elements of the original array in a rotated order. 
By default, the array should rotate by one element. If a 
negative value is given, the array is rotated in the 
opposite direction.

Example:

a = [ "a", "b", "c", "d" ]
a.my_rotate         #=> ["b", "c", "d", "a"]
a.my_rotate(2)      #=> ["c", "d", "a", "b"]
a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
a.my_rotate(15)     #=> ["d", "a", "b", "c"]
*/

function myRotate() {}

/*
my_join returns a single string containing all the elements of 
the array, separated by the given string separator. If no 
separator is given, an empty string is used.

Example:

a = [ "a", "b", "c", "d" ]
a.my_join         # => "abcd"
a.my_join("$")    # => "a$b$c$d"
*/

function myJoin(array, separator) {
  let joinedString = "";

  for (let i = 0; i < array.length; i++) {
    if (i != array.length - 1) {
      joinedString += array[i] + separator;
    } else {
      joinedString += array[i];
    }
  }

  return joinedString;
}
console.log("myjoin test");
console.log(myJoin(["callie", "squeaky"], "$"));

/*
Write a method that returns a new array containing all the 
elements of the original array in reverse order.

Example:

[ "a", "b", "c" ].my_reverse   #=> ["c", "b", "a"]
[ 1 ].my_reverse               #=> [1]
*/

// function myReverse() {}

// function myMap() {}

// function mySelect() {}

// function myJoin() {}

/*
# Write a `doubler` method that takes an array of integers 
and returns an
# array with the original elements multiplied by two.
*/

// function doubler() {}

/*
# Create a method that takes in an `Array` of `String`s and 
  uses `inject`
# to return the concatenation of the strings.
#
# ```ruby
# concatenate(["Yay ", "for ", "strings!"])
# # => "Yay for strings!"
*/

// function concatenate(array) {
//   let concatenated = "";
//   for (let i = 0; i < array.length; i++) {
//     concatenated += array[i];
//   }
// }
// console.log("Concatenated tests:");
// console.log("yay", "for", "strings");

// function factors(num) {
//   let factorsArray = [];

//   for (let i = 0; i <= num; i++) {
//     if (num % i === 0) {
//       factorsArray.push(i);
//     }
//   }

//   return factorsArray;
// }
// console.log("Factors tests:");
// console.log(factors(10));
// console.log(factors(7));
// console.log(factors(30));

// function bubbleSort(array) {}

// function substrings(string) {
//   let substring = [];
//   for (let i = 0; i <= string.length; i++) {
//     for (let j = i + 1; j <= string.length; j++) {
//       smallSubstring = string.slice(i, j);
//       if (!substring.includes(smallSubstring)) substring.push(smallSubstring);
//     }
//   }

//   return substring;
// }
// console.log(substrings("cats"));
// console.log(substrings("dogs"));
// console.log(substrings("callie"));
// console.log(substrings("squeaky"));

// function subwords(word, dictionary) {}

// console.log(subwords("cat", ["catch", "can", "cat", "dog"]));
