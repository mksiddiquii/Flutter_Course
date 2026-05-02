import 'package:flutter/material.dart';
import 'package:whats_app/Screen/function.dart';

class MsgScreen extends StatelessWidget {
  const MsgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: const Color.fromARGB(255, 29, 170, 97),
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          Icon(Icons.camera_alt_outlined, size: 25, color: Colors.black),
          SizedBox(width: 8),
          Icon(Icons.more_vert, color: Colors.black),
        ],
        // backgroundColor: const Color.fromARGB(255, 26, 22, 22),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Msg_person("Muhammd Kamran","https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768"),
            Msg_person("Ali Ahmed","https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/507983489_1913900376089474_2926691798828989974_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=1d70fc&_nc_ohc=iIYhqt1wSCMQ7kNvwGP0tk_&_nc_oc=AdpahPVWiw61UZkNwUDWGX5QdEiRXfw_2lL0NzfPG7_6geWb4MP-LHawbNKHEcxTA5A&_nc_zt=23&_nc_ht=scontent.fkhi22-1.fna&_nc_gid=vpsoH8AG-rYtXyW9O3I4PQ&_nc_ss=7b289&oh=00_Af5Rj5wJcDFFZGSxRHgiRCe1smerNhvqHx4Xg-Z9t2E4Kw&oe=69FB8251",),
            Msg_person("Abdullah bin Shahid ","https://abdulahbinshahid-portfolio-mu.vercel.app/profile.jpg","Compelte the 2nd Task "),
             Msg_person(
              "Muhammd Kamran",
              "https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768",
            ),
            Msg_person(
              "Ali Ahmed",
              "https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/507983489_1913900376089474_2926691798828989974_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=1d70fc&_nc_ohc=iIYhqt1wSCMQ7kNvwGP0tk_&_nc_oc=AdpahPVWiw61UZkNwUDWGX5QdEiRXfw_2lL0NzfPG7_6geWb4MP-LHawbNKHEcxTA5A&_nc_zt=23&_nc_ht=scontent.fkhi22-1.fna&_nc_gid=vpsoH8AG-rYtXyW9O3I4PQ&_nc_ss=7b289&oh=00_Af5Rj5wJcDFFZGSxRHgiRCe1smerNhvqHx4Xg-Z9t2E4Kw&oe=69FB8251",
            ),
            Msg_person(
              "Abdullah bin Shahid ",
              "https://abdulahbinshahid-portfolio-mu.vercel.app/profile.jpg",
              "Compelte the 2nd Task ",
            ),
            Msg_person(
              "Muhammd Kamran",
              "https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768",
            ),
            Msg_person(
              "Ali Ahmed",
              "https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/507983489_1913900376089474_2926691798828989974_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=1d70fc&_nc_ohc=iIYhqt1wSCMQ7kNvwGP0tk_&_nc_oc=AdpahPVWiw61UZkNwUDWGX5QdEiRXfw_2lL0NzfPG7_6geWb4MP-LHawbNKHEcxTA5A&_nc_zt=23&_nc_ht=scontent.fkhi22-1.fna&_nc_gid=vpsoH8AG-rYtXyW9O3I4PQ&_nc_ss=7b289&oh=00_Af5Rj5wJcDFFZGSxRHgiRCe1smerNhvqHx4Xg-Z9t2E4Kw&oe=69FB8251",
            ),
            Msg_person(
              "Abdullah bin Shahid ",
              "https://abdulahbinshahid-portfolio-mu.vercel.app/profile.jpg",
              "Compelte the 2nd Task ",
            ),
            Msg_person(
              "Muhammd Kamran",
              "https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768",
            ),
            Msg_person(
              "Ali Ahmed",
              "https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/507983489_1913900376089474_2926691798828989974_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=1d70fc&_nc_ohc=iIYhqt1wSCMQ7kNvwGP0tk_&_nc_oc=AdpahPVWiw61UZkNwUDWGX5QdEiRXfw_2lL0NzfPG7_6geWb4MP-LHawbNKHEcxTA5A&_nc_zt=23&_nc_ht=scontent.fkhi22-1.fna&_nc_gid=vpsoH8AG-rYtXyW9O3I4PQ&_nc_ss=7b289&oh=00_Af5Rj5wJcDFFZGSxRHgiRCe1smerNhvqHx4Xg-Z9t2E4Kw&oe=69FB8251",
            ),
            Msg_person(
              "Abdullah bin Shahid ",
              "https://abdulahbinshahid-portfolio-mu.vercel.app/profile.jpg",
              "Compelte the 2nd Task ",
            ),
            Msg_person(
              "Muhammd Kamran",
              "https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768",
            ),
            Msg_person(
              "Ali Ahmed",
              "https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/507983489_1913900376089474_2926691798828989974_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=1d70fc&_nc_ohc=iIYhqt1wSCMQ7kNvwGP0tk_&_nc_oc=AdpahPVWiw61UZkNwUDWGX5QdEiRXfw_2lL0NzfPG7_6geWb4MP-LHawbNKHEcxTA5A&_nc_zt=23&_nc_ht=scontent.fkhi22-1.fna&_nc_gid=vpsoH8AG-rYtXyW9O3I4PQ&_nc_ss=7b289&oh=00_Af5Rj5wJcDFFZGSxRHgiRCe1smerNhvqHx4Xg-Z9t2E4Kw&oe=69FB8251",
            ),
            Msg_person(
              "Abdullah bin Shahid ",
              "https://abdulahbinshahid-portfolio-mu.vercel.app/profile.jpg",
              "Compelte the 2nd Task ",
            ),
           
           
           
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green, // 👈 active = green
        unselectedItemColor: Colors.black, // 👈 inactive = black
        type: BottomNavigationBarType.fixed, // 👈 needed for 4 items
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
