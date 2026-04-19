import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home View"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
      
        child: Column(
          
          children: [
            Container(height: 200, width: 2000, color: Colors.lime,),
            Container(height: 200, width: 200, color: Colors.redAccent),
            Container(height: 200, width: 200, color: Colors.greenAccent),
            Container(height: 200, width: 200, color: Colors.blueAccent),
          ],
        ),
      ),
    );
  }
}
