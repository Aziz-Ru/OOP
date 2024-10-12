class Player {
  String name;
  int dob;
  String country;
  double salary;
  Player(
      {required this.name,
      required this.dob,
      required this.country,
      required this.salary});

  double getSalary(int noOfmonth) {
    return salary * noOfmonth;
  }

  getAge() {
    DateTime now = DateTime.now();

    int age = now.year - this.dob;
    return age;
  }
}
