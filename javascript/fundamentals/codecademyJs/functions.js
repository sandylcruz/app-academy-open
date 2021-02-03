// Function declarations
function getReminder() {
  console.log('Water the plants.');
}

function greetInSpanish() {
  console.log('Buenas Tardes.');
}

// Calling a function
function sayThanks() {
  console.log('Thank you for your purchase! We appreciate your business.');
}

sayThanks();
sayThanks();
sayThanks();

// Parameters and arguments
function sayThanks(name) { 
  console.log('Thank you for your purchase ' + name + '! 
  We appreciate your business.'); }
console.log(sayThanks('Cole'));

// Default params
function makeShoppingList(item1 = 'milk', item2 = 'bread', item3 = 'eggs') {
  console.log(`Remember to buy ${item1}`);
  console.log(`Remember to buy ${item2}`);
  console.log(`Remember to buy ${item3}`);
  }

// Return
function monitorCount(rows, columns) {
  let area = rows * columns;
  return area;
}
const numOfMonitors = monitorCount(5, 4);

console.log(numOfMonitors);

// Helper functions
function monitorCount(rows, columns) {
  return rows * columns;
}

function costOfMonitors(rows, columns) {
  return monitorCount(rows, columns) * 200;
}

const totalCost = costOfMonitors(5, 4);

console.log(totalCost);

// Function expression
const plantNeedsWater = function (day) {
  if (day === 'Wednesday') { return true; } else {
    return false;
  }
};

console.log(plantNeedsWater('Tuesday'));

// Fat arrow
const plantNeedsWater = (day) => {
  if (day === 'Wednesday') {
    return true;
  } else {
    return false;
  }
};

// Concise body arrow
const plantNeedsWater = day => day === 'Wednesday' ? true : false;
;