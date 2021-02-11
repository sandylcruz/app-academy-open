class A {
  constructor(things) {
    this.things = things;
  }

  myInstanceMethod() {
    console.log("hi");
  }

  static myClassMethod() {}
}

function A(things) {
  this.things = things;
}

A.prototype.myInstanceMethod = function () {
  console.log("hi");
};

A.myClassMethod = function () {
  //...
};

const a = new A([]);

a.myInstanceMethod();

class A {
  constructor(things) {
    this.things = things;
  }

  myInstanceMethod() {
    console.log("hi");
  }

  static myClassMethod() {
    //...
  }
}

function A(things) {
  this.things = things;
}

A.prototype.myInstanceMethod = function () {
  console.log("hi");
};

A.myClassMethod = function () {
  //...
};

class A {
  constructor(things) {
    this.things = things;
  }

  myInstanceMethod() {
    console.log("hi");
  }

  static myClassMethod() {
    //...
  }
}

function A(things) {
  this.things = things;
}

A.prototype.myInstanceMethod = function () {
  console.log("hi");
};

A.myClassMethod = function () {
  //..
};

class A {
  constructor(things) {
    this.things = things;
  }

  myInstanceMethod() {
    console.log("hi");
  }

  static myClassMethod() {
    //...
  }
}
