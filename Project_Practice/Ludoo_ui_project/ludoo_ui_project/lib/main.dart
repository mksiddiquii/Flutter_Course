import 'package:flutter/material.dart';

void main() {
  runApp(const LudooUIApp());
}
 class LudooUIApp extends StatelessWidget {
  const LudooUIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      appBar: AppBar(
        title: Text("Ludoo UI Project By Muhammad Kamran Siddiqui"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
     body:
        Container(height: 650,width: 1500,decoration: BoxDecoration(
          color: const Color.fromARGB(26, 227, 222, 222),border: Border.all(color: Colors.black,width: 10,)
        ),
        child: Column(
          children: [
            Row(children: [
              Container(height: 315,width: 740,decoration: BoxDecoration(
          color: Colors.red ,
        )),
              Container(height: 315,width: 740,decoration: BoxDecoration(
          color:Colors.blue
        ))
            ],
            ),
            Row(children: [
              Container(height: 315,width: 740,decoration: BoxDecoration(
          color: Colors.green
        )),
              Container(height: 315,width: 740,decoration: BoxDecoration(
          color:Colors.yellow
        ))
            ],
            )
          ],
          
        ),)
     )
    );
  }
}