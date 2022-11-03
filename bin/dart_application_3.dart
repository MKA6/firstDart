import 'package:dart_application_3/dart_application_3.dart'
    as dart_application_3;

import 'Corse.dart';
import 'depastment.dart';
import 'students.dart';

void main(List<String> arguments) {
  // dart lecture 1
  /*String name = "omar";
  int age = 9;
  double gpa = 99.9;
  num id = 5.2;
  bool isMale = true;
  dynamic x = "name";
  // generic type
  List<String> studentNames = ['ahmed', 'ali', 'hussam', 'hani', 'shaker'];
  studentNames.add('value');
  studentNames.insert(5, 'SAEED');
  studentNames.length;
  studentNames.isEmpty;
  studentNames.isNotEmpty;
  List<int> namesLengths = [];
  studentNames.forEach((element) {
    namesLengths.add(element.length);
  });
  List<int> list2 = studentNames.map((e) {
    return e.length;
  }).toList();
  Set<String> studentsSet = {"omar", "omar", "ali"};
  print(studentsSet);
  // define list of string and give it dummy data
  // define new list from the bove list and make its elements as
  // the upper case of the first letter of the first list items
  // ['omar','hassan','ali'] => ['Omar','Hassan','Ali']
  List<String> namesOfStudents = ['omar', 'hassan', 'ali'];
  List<String> names2OfStudents = namesOfStudents.map((e) {
    //omar
    String firstLetter = e[0]; // o
    String remainingLetters = e.substring(1); // mar
    String newName = firstLetter.toUpperCase() + remainingLetters; // Omar
    return newName;
  }).toList();
  int index = namesOfStudents.indexOf('omar');
  print(namesOfStudents[index]);
  print(names2OfStudents);
  Map<String, dynamic> studentInfo = {
    "name": "ahmed",
    "age": 23,
    "city": "Gaza",
    "son": "ahmed"
  };
  studentInfo['name'] = "ali";
  studentInfo.keys;
  studentInfo.entries;
  // select * from students where id = 5 // linear search
*/
// dart lecture 2

  // create class called students with four attributes
  // 1- stuId as number
  // 2- stuName as string
  // 3- isMale as boolean
  // 4- list of courses names and marks
  // 5- department details which contains
  //      a- department_name
  //      b- department_manager
  //      c- department_students_count
  // make 3 different objects from the created class
  //

  // Student student = Student(
  //     1,
  //     'omar',
  //     true,
  //     [
  //       Course('arabic', 4, 90),
  //       Course('english', 2, 95),
  //       Course('flutter', 5, 98),
  //     ],
  //     Department('IT', 'iyad', 4000));
  // double x = student.calculateAvg();
  // print(x);
  // student.insertCourse('math', 1, 45);
  // double y = student.calculateAvg();
  // print(y);
  // define new method called insert new course
  // this method will recieve three parameters which are :
  // 1- course name
  // 2- course hours
  // 3- course mark
  // the course hours must be larger than zero
  // course mark must be larger than 40
  //student.dummyFunction('ahmed','omar',z: true,y: 100);
  // Employee? employee;
  // print((employee?.student?.name)??'not defined');

  // define new constructor for student class that will
  // assign values to student's attributes using map
  Map<String, dynamic> map = {
    'id': 1,
    "name": "omar",
    "isMale": true,
    "courses": [
      {"name": "arabic", "hours": 3, "mark": 90},
      {"name": "math", "hours": 2, "mark": 92},
      {"name": "english", "hours": 2, "mark": 88}
    ],
    "department": {'name': "IT", "manager": "hani", "count": 600}
  };
  Student student = Student.fromMap(map);
  print(student.courses![1].courseName);
}
