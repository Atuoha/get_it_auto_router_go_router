// build container for color
import 'package:flutter/cupertino.dart';

Widget buildContainer(String color,Function getColor) {
  return Container(
    height: 5,
    width: 40,
    decoration: BoxDecoration(
      color: getColor(color),
      borderRadius: BorderRadius.circular(20),
    ),
  );
}