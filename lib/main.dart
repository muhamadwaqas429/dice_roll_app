import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.purple,
      body: GradientContainer(color1: Colors.deepPurpleAccent,color2: Colors.deepPurple,),
    ),
  ));
}

