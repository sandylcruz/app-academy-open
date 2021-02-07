// range(start, end);
function range(startNum, endNum) {
  if (startNum === endNum) {
    return [endNum];
  } else {
    let list = range(startNum, endNum - 1);
    list.push(endNum);
    return list;
  }
}

function range(start, end) {
  function rangeAccumulator(innerStart, innerEnd, acc) {
    acc.push(innerStart);

    if (innerStart === innerEnd) {
      return acc;
    }

    return rangeAccumulator(innerStart + 1, innerEnd, acc);
  }

  return rangeAccumulator(start, end, []);
}
// console.log(range(1, 10));

//sumRec(arr)
function sumRec(arr) {
  if (arr.length === 0) {
    return 0;
  } else {
    sumRec(arr);
  }
}

// exponent(base, exp)
function myExponent(base, exp) {
  if (exp === 0) {
    return 1;
  } else {
    return base * myExponent(base, exp - 1);
  }
}

// fibonacci(n)
function fib(num) {
  if (num === 0) {
    return 0;
  } else if (num === 1) {
    return 1;
  } else {
    return fib(num - 1) + fib(num - 2);
  }
}
// console.log(fib(6));

// mergesort(arr)
function merge(left, right) {
  const sortedArray = [];

  while (left.length > 0 && right.length > 0) {
    if (left[0] < right[0]) {
      sortedArray.push(left.shift());
    } else {
      sortedArray.push(right.shift());
    }
  }
  return sortedArray.concat(left, right);
}

function mergeSort(array) {
  if (array.length < 2) {
    return array;
  } else {
    const middleIndex = Math.floor(array.length / 2);
    const left = mergeSort(array.slice(0, middleIndex));
    const right = mergeSort(array.slice(middleIndex));
    return merge(left, right);
  }
}
// console.log(mergeSort([5, 4, 3, 2, 1]));

// bsearch(arr, target)
function binarySearch(array, target) {
  const floor = 0;
  const ceiling = array.length - 1;
  const mid = Math.floor((floor + ceiling) / 2);

  if (array[mid] === target) {
    return mid;
  } else if (array[mid] < target) {
    let newArray = array.slice(mid + 1, ceiling);
    const indexOnRight = binarySearch(newArray, target);

    if (indexOnRight === -1) {
      return -1;
    } else {
      return mid + 1 + indexOnRight;
    }
  } else if (array[mid] > target) {
    let newArray = array.slice(floor, mid - 1);
    return binarySearch(newArray, target);
  } else if (array.length === 0) {
    return -1;
  }
}

// console.log(binarySearch([1, 2, 3, 4, 5], 4));

// subsets(arr)

// deepDup(arr)
