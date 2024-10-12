import 'player.dart';

class FootballPlayer extends Player {
  String Position;
  FootballPlayer(
      {required this.Position,
      required name,
      required dob,
      required country,
      required salary})
      : super(name: name, dob: dob, country: country, salary: salary);

  @override
  double getSalary(int noOfmonth) {
    return this.salary * .992;
  }
}
