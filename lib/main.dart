import 'package:flutter/material.dart';
import 'package:PinBoard/main_page.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PinBoard',
      theme: ThemeData(
        primaryColor: const Color(0xFF767676),
        colorScheme: const ColorScheme.light(
          secondary: Color(0xFFE5002A),
        ),
      ),
      home: const MainPage(),
    );
  }
}