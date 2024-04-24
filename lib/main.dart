import 'package:flutter/material.dart';
import 'package:instax/pages/home_pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gojek',
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
