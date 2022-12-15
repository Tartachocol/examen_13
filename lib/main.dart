import 'package:examen_13/screen_13/screen_13.dart';
import 'package:examen_13/themes/themes_13.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomeScreen_13(),
      theme: AppTheme_13.lightTheme,
    );
  }
}
