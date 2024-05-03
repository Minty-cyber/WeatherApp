import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyWeatherApp());
}

class MyWeatherApp extends StatelessWidget {
  const MyWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      theme: Theme(data: data, child: child),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}