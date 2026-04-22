import 'package:flutter/material.dart';

void main() {
  runApp(const ChessUIproject());
}

class ChessUIproject extends StatelessWidget {
  const ChessUIproject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(width: 610,height: 690,decoration: BoxDecoration(border: Border.all(color: Colors.black,width:5.0,)),
          child: Column(
            children: [Container(width: 610,height: 80,decoration: BoxDecoration(border: Border.all(color: Colors.black,width:5.0,)),child: Center(
              child: Text("Chess UI Project By M.Kamran Siddiqui",style: TextStyle(
                fontSize: 26,fontWeight: FontWeight.bold,color: Colors.blue),),
            ),
            ),
              Row(children: [
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
            ],),Row(children: [
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
            ],),Row(children: [
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
            ],),Row(children: [
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
            ],),Row(children: [
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
            ],),Row(children: [
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
            ],),Row(children: [
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
            ],),Row(children: [
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
              Container(width: 75,height: 75,color: Colors.white,),
              Container(width: 75,height: 75,color: Colors.black,),
            ],)],
            
          ),
        )
      ),
    );
  }
}
