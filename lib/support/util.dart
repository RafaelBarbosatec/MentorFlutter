
import 'package:flutter/material.dart';

Color ColorFromHex({String code}) {
  var str = code.substring(1, 7);
  var bigint = int.parse(str, radix: 16);
  final r = (bigint >> 16) & 255;
  final g = (bigint >> 8) & 255;
  final b = bigint & 255;
  final a = 255;
  return Color.fromARGB(a, r, g, b);
}