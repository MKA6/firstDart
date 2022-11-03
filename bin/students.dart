import 'dart:ffi';

import 'Corse.dart';
import 'depastment.dart';

class Student {
  int? id;
  String? name;
  bool? isMale;
  List<Course>? courses;
  Department? department;
  Student.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    isMale = map['isMale'];
    courses = (map['courses'] as List).map((e) {
      return Course.fromMap(e);
    }).toList();
    department = Department.fromMap(map['department']);
  }

  Student(this.id, this.name, this.isMale, this.courses, this.department);
  // insertCourse(String name, int hours, double mark) {
  //   if (hours > 0 && mark >= 40) {
  //     courses?.add(Course(name, hours, mark));
  //   } else {
  //     print('you have to insert valid data');
  //   }
  // }

  double calculateAvg() {
    double sum = 0;
    double hoursCount = 0;
    courses?.forEach((element) {
      sum += (element.courseMark ?? 1) * (element.courseHours ?? 2);
      hoursCount += element.courseHours!;
    });
    return sum / hoursCount;
    print('hello');
  }

  dummyFunction(String x, String name, {double y = 0, bool z = true}) {}
}
