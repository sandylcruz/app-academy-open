function quicksort(array) {
  const pivotElement = array[0];
  const left = [];
  const right = [];

  if (array.length == 0) {
    return [];
  }

  for (let i = 1; i < array.length; i++) {
    if (array[i] < pivotElement) {
      left.push(array[i]);
    } else {
      right.push(array[i]);
    }
  }

  return quicksort(left).concat(pivotElement, quicksort(right));
}
console.log(quicksort([4, 3, 2, 1]));
