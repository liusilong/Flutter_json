class ClassInfo {
  String id;
  String name;
  List<Student> studentList;

  ClassInfo({this.id, this.name, this.studentList});

  factory ClassInfo.fromJson(Map<String, dynamic> json) {
    final originList = json['students'] as List;
    List<Student> studentList =
        originList.map((value) => Student.fromJson(value)).toList();
    return ClassInfo(
        id: json['id'], name: json['class_name'], studentList: studentList);
  }
}

class Student {
  String name;
  String sex;

  Student({this.name, this.sex});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(name: json['name'], sex: json['sex']);
  }
}
