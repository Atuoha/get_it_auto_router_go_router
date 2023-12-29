import 'package:flutter/material.dart';

Widget ratings() => const Row(
      children: [
        Icon(Icons.star, color: Colors.deepOrange, size: 15),
        Icon(Icons.star, color: Colors.deepOrange, size: 15),
        Icon(Icons.star, color: Colors.deepOrange, size: 15),
        Icon(Icons.star, color: Colors.deepOrange, size: 15),
        Icon(Icons.star, color: Colors.deepOrange, size: 15),
        SizedBox(width: 20),
        Text('(3400 Reviews)')
      ],
    );
