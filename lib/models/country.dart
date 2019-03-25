class Country {
  String name;
  List<String> cities;

  Country({this.name, this.cities});

  factory Country.fromJson(Map<String, dynamic> json) {
    print('json["cities"] type is ${json['cities'].runtimeType}');
    var originList = json['cities'];
    List<String> cityList = new List<String>.from(originList);
    return Country(name: json['name'], cities: cityList);
  }
}
