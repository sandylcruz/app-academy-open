// myEach
Array.prototype.myEach = function myEach(callback) {
  for (let i = 0; i < this.length; i++) {
    callback(this[i]);
  }
};

function callback(element) {
  console.log(element);
}

// [1, 2, 3, 4, 5].myEach(callback);
// [1, 2, 3, 4, 5].myEach((num) => console.log(num));

// myMap
Array.prototype.myMap = function (callback) {
  let mappedArr = [];

  for (let i = 0; i < this.length; i++) {
    mappedArr.push(callback(this[i]));
  }

  return mappedArr;
};

function callback(element) {
  console.log(element * 2);
}

// [1, 2, 3, 4, 5].myMap((num) => console.log(num * 2));
// [1, 2, 3, 4, 5].myMap(callback);

Array.prototype.myReduce = function (func, initialValue) {
  let arr = this;

  if (initialValue === undefined) {
    initialValue = arr[0];
    arr = arr.slice(1);
  }

  let result = initialValue;

  arr.myEach((el) => (result = func(result, el)));

  return result;
};

/////
NUMBERS = [1, 2, 3, 4, 5];

console.log(NUMBERS.myReduce((total, item) => total + item));
console.log(NUMBERS.myReduce((total, item) => total + item, 1));
