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
console.log(range(1, 10));

//sumRec(arr)
function sumRec(arr) {
  if (arr.length === 1) {
    return arr;
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
console.log(fib(6));

// deepDup(arr)

// bsearch(arr, target)

// mergesort(arr)

// subsets(arr)
