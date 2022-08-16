import 'package:clone_whatsup/UI/message.dart';
import 'package:clone_whatsup/utils/info.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';

class ChatList extends StatefulWidget {
  final bool kWeb;
  const ChatList({Key? key, required this.kWeb}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.kWeb ? AppBarChatWeb() : AppBarChatMobile(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Assets.assetsWhatsupBackground))),
              child: ListView.builder(
                controller: ScrollController(),
                shrinkWrap: true,
                reverse: true,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Message(
                      me: messages[index]["isMe"].toString() == "true",
                      message: messages[index]["text"].toString(),
                      date: messages[index]["time"].toString());
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "write your message ...",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14))),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.send))
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
