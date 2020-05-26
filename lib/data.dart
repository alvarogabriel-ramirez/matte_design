import 'package:flutter/material.dart';

Color primaryColor = Color(0xFF343A3F);

List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.black38,
    offset: Offset(7, 7),
    blurRadius: 23,
    spreadRadius: 6
  ),
  BoxShadow(
    color: Colors.white10.withOpacity(0.1),
    offset: Offset(-2, -2),
    blurRadius: 10,
    spreadRadius: 4
  )
];