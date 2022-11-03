class Course {
  String? courseName;
  int? courseHours;
  int? courseMark;
  Course(this.courseName, this.courseHours, this.courseMark);
  Course.fromMap(Map map) {
    courseName = map['name'];
    courseHours = map['hours'];
    courseMark = map['mark'];
  }
}
