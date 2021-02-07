function Student(fname, lname) {
  this.fname = fname;
  this.lname = lname;
  this.courses = [];
}

Student.prototype.name = function () {
  return `${this.fname} ${this.lname}`;
};

Student.prototype.enroll = function (course) {
  if (!this.courses.includes(course)) {
    this.courses.push(course);
    course.addStudent(this);
  }
};

Student.prototype.courseLoad = function () {};

function Course(courseName, department, numCredits, days, block) {
  this.courseName = courseName;
  this.department = department;
  this.numCredits = numCredits;
  this.students = [];
  this.days = days;
  this.block = block;
}

Course.prototype.addStudent = function (student) {
  this.students.push(student);
  student.enroll(this);
};

// Course.prototype.conflictsWith(course1, course2) {

// }

let callie = new Student("Callie", "Cat");
let course1 = new Course("How to Cat", "Cats", 3, ["Monday"], 1);
// console.log(course1);
// console.log(callie.name());
callie.enroll(course1);
console.log(course1);
// console.log(callie);

// console.log(course1);
