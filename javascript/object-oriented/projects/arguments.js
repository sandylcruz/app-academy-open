function sum(nums) {
  let accumulator = 0;

  for (let i = 0; i < nums.length; i++) {
    accumulator = accumulator + nums[i];
  }

  return accumulator;
}

function sum(...nums) {
  let accumulator = 0;

  for (let i = 0; i < nums.length; i++) {
    accumulator = accumulator + nums[i];
  }

  return accumulator;
}

Function.prototype.myBind = function (newThis) {
  const that = this;
  return function boundFunction() {
    return that.apply(newThis);
  };
};

Function.prototype.myBind1 = function (newThis) {
  const boundFunction = this;
  const bindArguments = Array.from(arguments).slice(1);
  return function boundFunction() {
    const callArguments = Array.from(arguments);
    return boundFunction.apply(newThis, bindArguments.concat(callArguments));
  };
};

function fullName(salutation, firstName) {
  console.log(salutation, firstName, this.lastName);
}

const person = {
  fname: "Callie",
};

function sumThree(num1, num2, num3) {
  return num1 + num2 + num3;
}

function curriedSum(numArgs) {
  const numbersArray = [];

  function _curriedSum(number) {
    numbersArray.push(number);
    if (numbersArray.length === numArgs) {
      let sum = 0;
      for (let i = 0; i < numbersArray.length; i++) {
        sum += numbersArray[i];
      }

      return sum;
    } else {
      return _curriedSum;
    }
  }

  return _curriedSum;
}

Function.prototype.curry = function (numArgs) {
  const argumentsArray = [];
  const that = this;

  function _innerCurry() {
    for (let i = 0; i < arguments.length; i++) {
      argumentsArray.push(arguments[i]);
    }

    if (argumentsArray.length < numArgs) {
      return _innerCurry;
    } else {
      return that.apply(undefined, argumentsArray);
    }
  }

  return _innerCurry;
};

const f1 = sumThree.curry(3);
console.log(f1(1)(2)(3));

// sumThree.call(undefined, 1, 2, 3); // sumThree(1, 2, 3)
// sumThree.apply(undefined, [1, 2, 3]); // sumThree(1, 2, 3)
