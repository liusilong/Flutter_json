class Person {
  String name;
  int age;
  double height;

  Person({this.name, this.age, this.height});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(name: json['name'], age: json['age'], height: json['height']);
  }
}
