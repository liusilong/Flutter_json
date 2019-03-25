import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/class_info.dart';

Future<String> _loadClassInfoJson() async {
  return await rootBundle.loadString('assets/class_info.json');
}

Future<ClassInfo> decodeClassInfo() async {
  String classInfoJson = await _loadClassInfoJson();

  Map<String, dynamic> jsonMap = json.decode(classInfoJson);

  ClassInfo classInfo = ClassInfo.fromJson(jsonMap);
  classInfo.studentList
      .forEach((student) => print('student name is ${student.name}'));
  return classInfo;
}
