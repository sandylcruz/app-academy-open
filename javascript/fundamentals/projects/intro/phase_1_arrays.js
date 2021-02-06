// Monkeypatch .uniq
// Array.prototype.uniq = function () {
//   let uniqueArray = [];
//   for (let i = 0; i < this.length; i++) {
//     if (!uniqueArray.includes(this[i])) {
//       uniqueArray.push(this[i]);
//     }
//   }
//   console.log(uniqueArray);
// };
// [1, 2, 3, 3, 4, 5].uniq();

// Monkey patch .uniq with forEach
Array.prototype.uniq = function () {
  let uniqueArray = [];
  this.forEach(function (num) {
    if (!uniqueArray.includes(num)) {
      uniqueArray.push(num);
    }
  });
  console.log(uniqueArray);
};
// [1, 2, 3, 3, 4, 5].uniq();

//
Array.prototype.twoSum = function () {
  let coordinates = [];

  for (let i = 0; i < this.length; i++) {
    for (let j = 1; j < this.length; j++) {
      if (this[i] + this[j] === 0) {
        coordinates.push([this.indexOf(this[i]), this.indexOf(this[j])]);
      }
    }
  }
  console.log(coordinates);
};
[1, -1, 2, 3, 4, 5, -5].twoSum();
