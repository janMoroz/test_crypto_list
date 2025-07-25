import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Color generateRandomColor() {
  final rand = Random();
  int rgb = rand.nextInt(0xFFFFFF + 1);
  return Color(0xFF000000 | rgb);
}

String formatPrice(double price) => NumberFormat.currency(
      locale: 'en_US',
      symbol: '\$',
      decimalDigits: 2,
    ).format(price);
