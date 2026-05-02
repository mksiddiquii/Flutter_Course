import 'package:flutter/material.dart';
import 'package:whats_app/screen/statues_screen.dart';


void main() {
  runApp(const WhatsAPp());
}

class WhatsAPp extends StatelessWidget {
  const WhatsAPp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StatuesScreen()
    );
  }
}
