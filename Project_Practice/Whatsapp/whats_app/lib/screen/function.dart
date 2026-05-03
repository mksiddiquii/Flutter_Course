import 'package:flutter/material.dart';

Widget Msg_person(name, image, [msg = "A little Fox Jumps Over the Tree"]) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(color: const Color.fromRGBO(0, 0, 0, 1), width: .05),
      ),
    ),
    child: ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(image)),
      title: Text(name, style: TextStyle(color: Colors.black, fontSize: 18)),
      subtitle: Text(msg, style: TextStyle(color: Colors.black, fontSize: 12)),
      tileColor: Colors.white,
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("3:14pm", style: TextStyle(color: Colors.black, fontSize: 12)),
          SizedBox(height: 4),
          Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget CircleButton(icon, label) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
    child: Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[200], // 👈 light grey background
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 26, color: Colors.black),
        ),
        SizedBox(height: 6),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.black)),
      ],
    ),
  );
}

Widget Call_log(name, image) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(color: const Color.fromRGBO(0, 0, 0, 1), width: .05),
      ),
    ),
    child: ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(image)),
      title: Text(
        name,
        style: TextStyle(
          color: Colors.red,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      ),
      subtitle: Text(
        " April 17 ,17:33 ",
        style: TextStyle(color: Colors.black, fontSize: 11),
      ),
      tileColor: Colors.white,
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [Icon(Icons.phone)],
      ),
    ),
  );
}

Widget status(outer_iamge,inner_image) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
    child: Column(
      children: [
        Container(
          width: 70,
          height: 120,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: .5),
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: NetworkImage(
                outer_iamge,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft, // ✅ only this line added
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.5),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        inner_image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                "Muhammad Kamran",
                style: TextStyle(color: Colors.white, fontSize: 7),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
