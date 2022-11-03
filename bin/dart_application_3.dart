import 'package:dart_application_3/dart_application_3.dart'
    as dart_application_3;

import 'Corse.dart';
import 'depastment.dart';
import 'students.dart';

void main(List<String> arguments) {
  /*
  Students student = Students(
      1,
      "mohammed",
      true,
      {"java": 80},
      [
        Corse("java", 90, 3),
        Corse("dart", 95, 2),
        Corse("html", 70, 4),
      ],
      Depastment("name", "maneger", "isMale"));

  double s = student.Avg();
  print(s);

  student.dummyFunction(x: "dd", z: false);

  */

  Students students = Students.stud({});

  Map map = {
    'id': 1,
    'Name' :"mohammed"
    'isMale': true ,

  };
}
