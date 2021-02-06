// range(start, end)

function range(start, end) {
  rangeArray = [];
}

//sumRec(arr)

// exponent(base, exp)
function myExponent(base, exp) {
  if (exp === 0) {
    return 1;
  } else {
    return base * myExponent(base, exp - 1);
  }
}

console.log(myExponent(2, 2));
console.log(myExponent(3, 2));

// fibonacci(n)

// deepDup(arr)

// bsearch(arr, target)

// mergesort(arr)

// subsets(arr)
