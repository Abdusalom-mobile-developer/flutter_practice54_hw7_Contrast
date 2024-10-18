import 'package:flutter/material.dart';
import 'package:flutter_practice54_hw7/screens/home.dart';
import 'package:flutter_practice54_hw7/screens/screen2.dart';
import 'package:flutter_practice54_hw7/screens/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        Screen2.id: (context) => const Screen2(),
        Screen3.id: (context) => const Screen3(),
      },
    );
  }
}
