import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/shape.dart';

Future<String> _loadShapeJson() async {
  return await rootBundle.loadString('assets/shape.json');
}

Future<Shape> decodeShape() async {
  String shapeJson = await _loadShapeJson();

  Map<String, dynamic> jsonMap = json.decode(shapeJson);

  Shape shape = Shape.fromJson(jsonMap);

  print('shape name is ${shape.name}');
  return shape;
}
