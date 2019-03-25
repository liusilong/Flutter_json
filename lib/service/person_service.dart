import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:async';
import '../models/person.dart';

// 读取 assets 文件夹中的 person.json 文件
Future<String> _loadPersonJson() async {
  return await rootBundle.loadString('assets/person.json');
}

// 将 json 字符串解析为 Person 对象
Future<Person> decodePerson() async {
  // 获取本地的 json 字符串
  String personJson = await _loadPersonJson();

  // 解析 json 字符串，返回的是 Map<String, dynamic> 类型
  final jsonMap = json.decode(personJson);

  print('jsonMap runType is ${jsonMap.runtimeType}');

  Person person = Person.fromJson(jsonMap);

  print(
      'person name is ${person.name}, age is ${person.age}, height is ${person.height}');

  return person;
}
