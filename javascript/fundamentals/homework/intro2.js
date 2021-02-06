// titleize

function titleize(array, callback) {
  let mapped = array.map((name) => `Mx. ${name} Jingleheimer Schmidt`);
  callback(mapped);
}
function printCallback(names) {
  names.forEach((name) => {
    console.log(name);
  });
}

titleize(["Callie", "Squeaky"], printCallback);
