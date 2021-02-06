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
[1, 2, 3, 4, 5].myMap(callback);
