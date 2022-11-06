class Department {
  String? name;
  String? manager;
  int? studentsCount;
  Department(this.name, this.manager, this.studentsCount);

  Department.fromMap(Map map) {
    name = map['name'];
    manager = map['manager'];
    studentsCount = map['count'];
  }
}
