// Monkeypatch .uniq
Array.prototype.uniq = function () {
  let uniqueArray = [];
  for (let i = 0; i < this.length; i++) {
    if (!uniqueArray.includes(this[i])) {
      uniqueArray.push(this[i]);
    }
  }
  console.log(uniqueArray);
};
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
[1, 2, 3, 3, 4, 5].uniq();
