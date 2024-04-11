import 'dart:ui';

import 'package:flutter/material.dart';
import 'contenedores.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Mis Contenedores",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
        ),
        body: const Contenedores(),
      ),
    );
  }
}
