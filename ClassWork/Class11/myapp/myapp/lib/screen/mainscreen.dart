import 'package:flutter/material.dart';
import 'package:myapp/screen/homescreen.dart';
import 'package:myapp/screen/privacy.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Image.asset("assets/image/parrot1.jpg",height: 600,width: 1000,),
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Muhammad Kamran siddiqui"),
              accountEmail: Text("mksiddiquii@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/image/parrot1.jpg"),
              ),
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined),
              title: Text("Privacy"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => const PrivacyScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
