function callieSays(strings, ...values) {
  console.log(strings);
  console.log(values);
  return `${values[1]}, ${values[0]} ${strings[1]}${strings[2]}`;
}

let name = "Callie",
  food = "sushi";
let str = callieSays`${name} loves #{food}`;
console.log(str);
