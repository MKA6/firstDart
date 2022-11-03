import 'dart:ffi';

import 'Corse.dart';
import 'depastment.dart';

class Students {
  int? stuId;
  String? sutName;
  bool? isMale;
  Map<String, double>? corseName;
  List<Corse>? corse;
  Depastment? dep;

  // Students.stud(Map map) {
  //   stuId = map['id'];
  //   sutName = map['Name'];
  //   isMale = map['inMale'];
  //   corse = map[Corse('', 5.2, 5)];
  //   dep = map[Depastment('mm', '', '')];
  // }
  Students.stud(Map map) {
    stuId = map['id'];
    sutName = map['Name'];
    isMale = map['isMale'];
    corse = (map['Corse'] as List).map((e) {
      return Corse(e['name'], e['mark'], e['hours']);
    }).toList();
  }
// التحويل من ماب ل ابجيكت
  Students(this.stuId, this.sutName, this.isMale, this.corseName, this.corse,
      this.dep);

  double avg() {
    double sum = 0;
    double avg = 0;
    corse?.forEach((element) {
      sum += element.mark * element.hours;
      avg += element.hours * sum;
    });
    return sum / avg;
  }

  void insert(String name, double mark, int hours) {
    if (mark >= 40 && hours > 0) {
      corse?.add(Corse(name, mark, hours));
    } else {
      print("error");
    }
  }

  dummyFunction({String x = '', double y = 0, bool z = true}) {}
}
