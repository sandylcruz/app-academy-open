// function setInterval(callback, delay[...args]) {

// }

class Clock {
  constructor() {
    const date = new Date();
    this.hours = date.getHours();
    this.minutes = date.getMinutes();
    this.seconds = date.getSeconds();

    this.printTime(date);
    this._tick(date);
  }

  printTime(date) {
    console.log`The time is ${this.hours}: ${this.minutes}:${this.seconds}`;
  }

  _tick(date) {
    this.seconds += 1;
    this.printTime(date);
  }
}
const clock = new Clock();
