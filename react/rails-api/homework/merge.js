// deep merge

/*
Things that are wrong:
- Only handling special case of objects, not arrays/sets/maps
- Object references shouldn't be shared so it can be assumed immutable data structure
- Not stack safe

Improvements to make:
- Be done in stack safe manner (either make tail recursive or solve iteratively)
*/

const isObject = (potentialObject) => {
  return typeof potentialObject === "object" && potentialObject !== null;
};

const deepMerge = (a, b) => {
  const accumulator = {};

  Object.keys(a).forEach((aKey) => {
    const aValue = a[aKey];

    if (Object.prototype.hasOwnProperty.call(b, aKey)) {
      const bValue = b[aKey];
      const isAObject = isObject(aValue);
      const isBObject = isObject(bValue);

      if (isAObject && isBObject) {
        accumulator[aKey] = deepMerge(aValue, bValue);
      } else {
        accumulator[aKey] = bValue;
      }
    } else {
      accumulator[aKey] = aValue;
    }
  });

  Object.keys(b).forEach((bKey) => {
    if (Object.prototype.hasOwnProperty.call(a, bKey)) {
      return;
    }

    const bValue = b[bKey];
    accumulator[bKey] = bValue;
  });

  return accumulator;
};

const a = {
  one: {
    x: 1,
  },
  two: true,
  four: true,
};

const b = {
  one: {
    y: 2,
  },
  three: "3",
  four: false,
};
console.log(deepMerge(a, b));
