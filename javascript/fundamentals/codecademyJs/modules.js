// jS Modules
let Airplane = {};
Airplane.myAirplane = "StarJet";
module.exports = Airplane;


// require()
const Airplane = require('./1-airplane.js');

function displayAirplane() {
  console.log(Airplane.myAirplane);
}

displayAirplane()

// Exports II
module.exports = {
  myAirplane: "CloudJet",
  displayAirplane:
    function () {
      return this.myAirplane;
    }
};

// Export default
let Airplane = {
  availableAirplanes: [
    {
      name: 'AeroJet',
      fuelCapacity: 800
    },
    {
      name: 'SkyJet',
      fuelCapacity: 500
    }
  ];
}
export default Airplane;

// import
import Airplane from './airplane';

function displayFuelCapacity() {
  Airplane.availableAirplanes.forEach(function (element) {
    console.log('Fuel capacity of ' + element.name + ': ' + element.fuelCapacity);
  });
}

displayFuelCapacity()

// Named exports
let Airplane = {};

let availableAirplanes = [
  {
    name: 'AeroJet',
    fuelCapacity: 800,
    availableStaff: ['pilots', 'flightAttendants', 'engineers',
      'medicalAssistance', 'sensorOperators'],
  }, {
    name: 'SkyJet',
    fuelCapacity: 500,
    availableStaff: ['pilots', 'flightAttendants'],
  }
];

let flightRequirements =
{
  requiredStaff: 4,
};

function meetsStaffRequirements(availableStaff, requiredStaff) {
  if (availableStaff.length >= requiredStaff) {
    return true
  } else {
    return false
  }
};

export { availableAirplanes, flightRequirements, meetsStaffRequirements };

// Named imports

import {
  availableAirplanes,
  flightRequirements,
  meetsStaffRequirements
} from './airplane';

function displayFuelCapacity() {
  availableAirplanes.forEach(function (element) {
           console.log('Fuel Capacity of ' + element.name + ': ' + element.fuelCapacity);
  });
}

displayFuelCapacity();

function displayStaffStatus() {
  availableAirplanes.forEach(function (element) {
    console.log(element.name + ' meets staff requirements: ' + meetsStaffRequirements(element.availableStaff, flightRequirements.requiredStaff));
  });
}
displayStaffStatus();

// Export named exports
let Airplane = {};

export let availableAirplanes = [
  {
    name: 'AeroJet',
    fuelCapacity: 800,
    availableStaff: ['pilots', 'flightAttendants', 'engineers',   
    'medicalAssistance', 'sensorOperators'],
    maxSpeed: 1200,
    minSpeed: 300,
  }, {
    name: 'SkyJet',
    fuelCapacity: 500,
    availableStaff: ['pilots', 'flightAttendants'],
    maxSpeed: 800,
    minSpeed: 200,
  }, 
];

export let flightRequirements = 
  { 
    requiredStaff: 4,
    requiredSpeedRange: 700,
  };

export function meetsStaffRequirements(availableStaff, requiredStaff) {
  if(availableStaff.length >= requiredStaff) {
    return true
  } else {
    return false
  }
};

export function meetsSpeedRangeRequirements(maxSpeed, minSpeed, requiredSpeedRange) {
  let range = maxSpeed - minSpeed;
  if (range > requiredSpeedRange) {
    return true;
  } else {
    return false;
  }
};

// Import named imports
import {availableAirplanes, flightRequirements, meetsStaffRequirements, meetsSpeedRangeRequirements} from './airplane';

function displayFuelCapacity() {
  availableAirplanes.forEach(function(element) {
      console.log('Fuel Capacity of ' + element.name + ': ' + element.fuelCapacity);
  });
}

displayFuelCapacity();

function displayStaffStatus() {
  availableAirplanes.forEach(function(element) {
    console.log(element.name + ' meets staff requirements: ' + meetsStaffRequirements(element.availableStaff, flightRequirements.requiredStaff) );
  });
}
displayStaffStatus();

function displaySpeedRangeStatus() {
  availableAirplanes.forEach(function(element) {
    console.log(element.name + ' meets speed range requirements:'  + meetsSpeedRangeRequirements(element.maxSpeed, element.minSpeed, flightRequirements.requiredSpeedRange));
  });
}

displaySpeedRangeStatus();

// Import as
import {aircrafts, flightReqs, meetsStaffReqs, meetsSpeedRangeReqs} from './airplane';

function displayFuelCapacity() {
  aircrafts.forEach(function(element) {
      console.log('Fuel Capacity of ' + element.name + ': ' + element.fuelCapacity);
  });
}

displayFuelCapacity();

function displayStaffStatus() {
  aircrafts.forEach(function(element) {
    console.log(element.name + ' meets staff requirements: ' + meetsStaffReqs(element.availableStaff, flightReqs.requiredStaff) );
  });
}
displayStaffStatus();

function displaySpeedRangeStatus() {
  aircrafts.forEach(function(element) {
    console.log(element.name + ' meets speed range requirements:'  + meetsSpeedRangeReqs(element.maxSpeed, element.minSpeed, flightReqs.requiredSpeedRange));
  });
}

displaySpeedRangeStatus();

// Combining export statements


