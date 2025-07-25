import 'dart:math';
import 'package:flutter/material.dart';

Color generateRandomColor() {
  final rand = Random();
  int rgb = rand.nextInt(0xFFFFFF + 1);
  return Color(0xFF000000 | rgb);
}
