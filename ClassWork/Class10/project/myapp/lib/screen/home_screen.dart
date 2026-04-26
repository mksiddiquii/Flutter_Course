import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(10),
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.camera_alt_outlined,size: 25,color: Colors.white,), Icon(Icons.more_vert,color: Colors.white)],
        backgroundColor: const Color.fromARGB(255, 26, 22, 22),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage("https://petapixel.com/assets/uploads/2024/01/High-resolution-image-of-sun-1536x806.jpg"),),
                title: Text("Kamran Siddiqui",style: TextStyle(color: Colors.black,fontSize: 25,),),
                subtitle: Text("A little Fox Jumps Over the Tree",style: TextStyle(color: Colors.black,fontSize: 15)),
                tileColor: Colors.white,
                trailing: Column(
                  children: [
                    Text("3:14pm",style: TextStyle(color: Colors.black,fontSize: 07)),
                    Container(height: 14,width: 14,
                    decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),)
                  ],
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2017/11/02/00/35/parrot-2909830_1280.jpg"),),
                title: Text("Kamran Siddiqui",style: TextStyle(color: Colors.black,fontSize: 25,),),
                subtitle: Text("A little Fox Jumps Over the Tree",style: TextStyle(color: Colors.black,fontSize: 15)),
                tileColor: Colors.white,
                trailing: Column(
                  children: [
                    Text("3:14pm",style: TextStyle(color: Colors.black,fontSize: 07)),
                    Container(height: 14,width: 14,
                    decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),)
                  ],
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.pink,),
                title: Text("Kamran Siddiqui",style: TextStyle(color: Colors.black,fontSize: 25,),),
                subtitle: Text("A little Fox Jumps Over the Tree",style: TextStyle(color: Colors.black,fontSize: 15)),
                tileColor: Colors.white,
                trailing: Column(
                  children: [
                    Text("3:14pm",style: TextStyle(color: Colors.black,fontSize: 07)),
                    Container(height: 14,width: 14,
                    decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),)
                  ],
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blueAccent,),
                title: Text("Kamran Siddiqui",style: TextStyle(color: Colors.black,fontSize: 25,),),
                subtitle: Text("A little Fox Jumps Over the Tree",style: TextStyle(color: Colors.black,fontSize: 15)),
                tileColor: Colors.white,
                trailing: Column(
                  children: [
                    Text("3:14pm",style: TextStyle(color: Colors.black,fontSize: 07)),
                    Container(height: 14,width: 14,
                    decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),)
                  ],
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blueAccent,),
                title: Text("Kamran Siddiqui",style: TextStyle(color: Colors.black,fontSize: 25,),),
                subtitle: Text("A little Fox Jumps Over the Tree",style: TextStyle(color: Colors.black,fontSize: 15)),
                tileColor: Colors.white,
                trailing: Column(
                  children: [
                    Text("3:14pm",style: TextStyle(color: Colors.black,fontSize: 07)),
                    Container(height: 14,width: 14,
                    decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),)
                  ],
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blueAccent,),
                title: Text("Kamran Siddiqui",style: TextStyle(color: Colors.black,fontSize: 25,),),
                subtitle: Text("A little Fox Jumps Over the Tree",style: TextStyle(color: Colors.black,fontSize: 15)),
                tileColor: Colors.white,
                trailing: Column(
                  children: [
                    Text("3:14pm",style: TextStyle(color: Colors.black,fontSize: 07)),
                    Container(height: 14,width: 14,
                    decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),)
                  ],
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blueAccent,),
                title: Text("Kamran Siddiqui",style: TextStyle(color: Colors.black,fontSize: 25,),),
                subtitle: Text("A little Fox Jumps Over the Tree",style: TextStyle(color: Colors.black,fontSize: 15)),
                tileColor: Colors.white,
                trailing: Column(
                  children: [
                    Text("3:14pm",style: TextStyle(color: Colors.black,fontSize: 07)),
                    Container(height: 14,width: 14,
                    decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),)
                  ],
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blueAccent,),
                title: Text("Kamran Siddiqui",style: TextStyle(color: Colors.black,fontSize: 25,),),
                subtitle: Text("A little Fox Jumps Over the Tree",style: TextStyle(color: Colors.black,fontSize: 15)),
                tileColor: Colors.white,
                trailing: Column(
                  children: [
                    Text("3:14pm",style: TextStyle(color: Colors.black,fontSize: 07)),
                    Container(height: 14,width: 14,
                    decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),)
                  ],
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blueAccent,),
                title: Text("Kamran Siddiqui",style: TextStyle(color: Colors.black,fontSize: 25,),),
                subtitle: Text("A little Fox Jumps Over the Tree",style: TextStyle(color: Colors.black,fontSize: 15)),
                tileColor: Colors.white,
                trailing: Column(
                  children: [
                    Text("3:14pm",style: TextStyle(color: Colors.black,fontSize: 07)),
                    Container(height: 14,width: 14,
                    decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),)
                  ],
                ),
              ),
            ),
            Container(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blueAccent,),
                title: Text("Kamran Siddiqui",style: TextStyle(color: Colors.black,fontSize: 25,),),
                subtitle: Text("A little Fox Jumps Over the Tree",style: TextStyle(color: Colors.black,fontSize: 15)),
                tileColor: Colors.white,
                trailing: Column(
                  children: [
                    Text("3:14pm",style: TextStyle(color: Colors.black,fontSize: 07)),
                    Container(height: 14,width: 14,
                    decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
