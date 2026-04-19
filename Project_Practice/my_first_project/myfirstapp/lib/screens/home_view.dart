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
            Container(height: 200, width: 2000, decoration: BoxDecoration(
              color: Colors.black26,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text("Container No.1",style: TextStyle(color: Colors.yellow,fontSize: 28),),
              
            ),),
            Container(height: 200, width: 200, color: Colors.redAccent),
            Container(height: 200, width: 200, color: Colors.greenAccent),
            Container(height: 200, width: 200, color: Colors.blueAccent),
          ],
        ),
      ),
    );
  }
}
