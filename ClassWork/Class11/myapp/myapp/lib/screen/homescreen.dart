import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Home Screen")),
    backgroundColor:Color.fromARGB(25,65, 78,26)
    );
  }
}