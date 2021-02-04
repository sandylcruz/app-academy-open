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
  ]
}
export default Airplane;