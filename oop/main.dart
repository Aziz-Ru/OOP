import 'footballp.dart';

void main(List<String> args) {
  // Player cr7 = Player(
  //     name: "Ronldo", dob: 1988, country: "Portugal", salary: 1000000);
  // print(cr7.getSalary(noOfmonth: 5));
  // print(cr7.getAge());

  FootballPlayer fp = FootballPlayer(
      Position: "CF", name: "R", dob: 1933, country: "POR", salary: 120000.0);
  print(fp.getAge());
  print(fp.getSalary(5));
}
