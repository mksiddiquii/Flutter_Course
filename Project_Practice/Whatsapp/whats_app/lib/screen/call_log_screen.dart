import 'package:flutter/material.dart';
import 'package:whats_app/screen/function.dart';

class LogScreen extends StatelessWidget {
  const LogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: Text(
          "Calls",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Icon(Icons.search_outlined, size: 25, color: Colors.black),
          SizedBox(width: 16),
          Icon(Icons.more_vert, color: Colors.black),
        ],
      ),
      body: Column(
       
        children: [
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 20,
            children: [
            CircleButton(Icons.call_outlined, "Call"),
            CircleButton(Icons.schedule_outlined, "Schedule"),
            CircleButton(Icons.dialpad_outlined, "Keypad"),
            CircleButton(Icons.message_outlined, "Message"),
            CircleButton(Icons.favorite_outline_sharp, "Favorites")
          ]
           ),
         )
                  
          ,Container(
            height: 30,
            width: double.infinity, // 👈 full width
            alignment: Alignment.centerLeft,
            child: Text(
              "    Recent",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Scrollable list
          Expanded(
            
            child: SingleChildScrollView(
              child: Column(
                children: [
                Call_log("Muhammad Kamran","https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768"),
                Call_log("Muhammad Kamran","https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768"),
                Call_log("Muhammad Kamran","https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768"),
                Call_log("Muhammad Kamran","https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768"),
                Call_log("Muhammad Kamran","https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768"),
                Call_log("Muhammad Kamran","https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768"),
                Call_log("Muhammad Kamran","https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768"),
                Call_log("Muhammad Kamran","https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768"),
                Call_log("Muhammad Kamran","https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768"),
              
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        currentIndex: 3, // 👈 Calls tab active (index 3)
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(label: "Chats", icon: Icon(Icons.chat)),
          BottomNavigationBarItem(
            label: "Updates",
            icon: Icon(Icons.update_outlined),
          ),
          BottomNavigationBarItem(
            label: "Communities",
            icon: Icon(Icons.people_outline),
          ),
          BottomNavigationBarItem(
            label: "Calls",
            icon: Icon(Icons.call_outlined),
          ),
        ],
      ),
    );
  }
}
