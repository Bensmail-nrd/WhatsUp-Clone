import 'package:flutter/material.dart';

class AppBarChatWeb extends AppBar {
  AppBarChatWeb({Key? key})
      : super(
          key: key,
          title: Text("Contact Name"),
          leadingWidth: 60,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg")),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
          ],
        );
}

class AppBarChatMobile extends AppBar {
  AppBarChatMobile({Key? key})
      : super(
          key: key,
          title: Text("Contact Name"),
          leadingWidth: 60,
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back));
          }),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
            IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        );
}
