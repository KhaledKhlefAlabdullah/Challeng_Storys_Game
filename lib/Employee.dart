class Employee {
  var id;
  var fullname;
  var salary;
  Employee(var id, var fullName, var salary) {
    this.id = id;
    this.fullname = fullName;
    this.salary = salary;
  }
}

// تم انشاء هذا الكلاس واللائحة لتخزين بينات وعرضها في جدول
List<Employee> lstemp = [
  Employee(1, "khaled alabdullah", 1000),
  Employee(2, "mohamad alabdullah", 500),
  Employee(3, "hosine alahmad", 95),
  Employee(4, "hdyee alagho", 5000),
  Employee(5, "lie hozard", 920),
  Employee(6, "nory fadp", 614),
];
