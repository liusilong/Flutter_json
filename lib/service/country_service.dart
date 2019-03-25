import 'dart:async';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../models/country.dart';

Future<String> _loadCountryJson() async {
  return await rootBundle.loadString('assets/country.json');
}

Future<Country> decodeCountry() async {
  String countryJson = await _loadCountryJson();

  Map<String, dynamic> jsonMap = json.decode(countryJson);

  Country country = Country.fromJson(jsonMap);
  print('country name is ${country.name}');
  return country;
}
