// bubbleSort

Array.prototype.bubbleSort = function () {
  let isSorted = false;
  let arr = this;

  while (isSorted === false) {
    isSorted = true;

    for (let i = 0; i < arr.length - 1; i++) {
      if (arr[i] > arr[i + 1]) {
        [arr[i], arr[i + 1]] = [arr[i + 1], arr[i]];
        isSorted = false;
      }
    }
  }
  return arr;
};

console.log([5, 4, 3, 2, 1].bubbleSort());
console.log([53, 42, 3, 22, 10].bubbleSort());
