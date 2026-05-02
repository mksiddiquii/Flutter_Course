import 'package:flutter/material.dart';
import 'package:whats_app/screen/function.dart';

class StatuesScreen extends StatelessWidget {
  const StatuesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: Text(
          "Update",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w100,
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
          Container(height: 40,width:double.infinity,alignment:  Alignment.centerLeft,
            child: Text(  
              "    Status",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w100,)),
          ),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // spacing: 2,
            children: [
            status("https://cdn.pixabay.com/photo/2026/02/20/12/38/pen_ash-snow-10134653_1280.jpg","https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768"),
             status("https://cdn.pixabay.com/photo/2022/12/05/17/29/droplets-7637235_1280.jpg","https://abdulahbinshahid-portfolio-mu.vercel.app/profile.jpg"),
             status("https://cdn.pixabay.com/photo/2024/08/02/16/44/rose-8940207_1280.jpg","https://cdn.pixabay.com/photo/2026/01/12/14/42/lion-10064513_1280.jpg"),
            status("https://cdn.pixabay.com/photo/2024/06/27/13/45/wallpaper-8857295_1280.jpg","https://cdn.pixabay.com/photo/2023/10/19/23/40/wallpaper-8327848_1280.jpg"),
             status("https://cdn.pixabay.com/photo/2026/02/20/12/38/pen_ash-snow-10134653_1280.jpg","https://thumbs.dreamstime.com/b/golden-glitter-allah-islamic-calligraphy-background-vector-golden-glitter-allah-islamic-calligraphy-background-429928435.jpg?w=768"),
             status("https://cdn.pixabay.com/photo/2022/12/05/17/29/droplets-7637235_1280.jpg","https://abdulahbinshahid-portfolio-mu.vercel.app/profile.jpg"),
             status("https://cdn.pixabay.com/photo/2024/08/02/16/44/rose-8940207_1280.jpg","https://cdn.pixabay.com/photo/2026/01/12/14/42/lion-10064513_1280.jpg"),
            status("https://cdn.pixabay.com/photo/2024/06/27/13/45/wallpaper-8857295_1280.jpg","https://cdn.pixabay.com/photo/2023/10/19/23/40/wallpaper-8327848_1280.jpg"),
            // status(),

          ]
           ),
         )
                  
          ,Container(
            height: 30,
            width: double.infinity, // 👈 full width
            alignment: Alignment.centerLeft,
            child: Text(
              "    Channels",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Scrollable list
          Expanded(
            
            child: SingleChildScrollView(
              child: Column(
                children: [
                Msg_person("ICMA Legacy", "https://scontent.fkhi2-3.fna.fbcdn.net/v/t39.30808-6/299147088_367528818909229_5284210787649653943_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=1d70fc&_nc_ohc=pMaxGdCR4bAQ7kNvwGuy9cb&_nc_oc=AdpqPOG4Dro8pMnN17wiQgqq3k2zWr1I4QGJpiHipvH7aPyYGXR6_qcYM-oQ6DPSMg4&_nc_zt=23&_nc_ht=scontent.fkhi2-3.fna&_nc_gid=hQ0hS_zOylDLTmcX-dyd8Q&_nc_ss=7b289&oh=00_Af5mGdHOwHqqt4OltUAh9nkbpdY-NWhmXaMGA3dK2wvLNA&oe=69FC2723","Note : Short term tuition Academy will only change 25% commission"),
               Msg_person("JOBS UPDATES | Academic", "https://cdn.pixabay.com/photo/2018/04/04/21/35/mr-panda-job-3291199_1280.jpg","Drop your cv with this post 0305-8844922 only WhatsApp"),
               Msg_person("Dr Sulman Feroz", "https://scontent.fkhi2-2.fna.fbcdn.net/v/t39.30808-6/684669010_1376395307840625_6336809839519452292_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=1d70fc&_nc_ohc=dHIQugtiO7MQ7kNvwGs76Jo&_nc_oc=AdrMbhmV0ukO8oDMupybEdp5Xh9VuJ8elS-nyAqGHjWD7PoH-34J5dJOuaQsYvxXn18&_nc_zt=23&_nc_ht=scontent.fkhi2-2.fna&_nc_gid=DbSGTMJo4E0f-BlffTDvOQ&_nc_ss=7b289&oh=00_Af6AaMk3QMsrBJ-0YLh3eiExE2VPkQtLM5ICqUU3B2Lm_w&oe=69FC1EB5","dedicated to sharing expert advice on health, natural remedies, fitness, and lifestyle tips."),
               Msg_person("Karachi Alerts", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbJgAue1fXQbo1ERx4VZaxUH25GesRYJUoRQ&s","Join us To Get Latest & Breaking About Karachi, Traffic, Weather, Foods, Brands, & Events.")
              
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        currentIndex: 2, //
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
