import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.dark().copyWith(
          primary: Colors.red,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
