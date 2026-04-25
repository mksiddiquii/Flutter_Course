import 'package:flutter/material.dart';
import 'package:ludoo_ui_project/screen/home.dart';

void main() {
  runApp(const LudoUIApp());
}
 class LudoUIApp extends StatelessWidget {
  const LudoUIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: HomeScreen(),
    );
  }
}