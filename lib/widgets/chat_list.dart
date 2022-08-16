import 'package:clone_whatsup/info.dart';
import 'package:clone_whatsup/widgets/message.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';
import 'app_bars.dart';

class ChatList extends StatefulWidget {
  final bool kWeb;
  const ChatList({Key? key, required this.kWeb}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  final TextEditingController _controller = TextEditingController();

  final ScrollController _scroller = ScrollController();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scroller.animateTo(_scroller.position.maxScrollExtent + 50,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    });
  }

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
                controller: _scroller,
                shrinkWrap: true,
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
            padding: const EdgeInsets.all(4),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                        hintText: "write your message ...",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14))),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        messages.add({
                          "isMe": true,
                          "text": _controller.text,
                          "time": DateTime.now().toString()
                        });
                        _controller.clear();
                        _scroller.animateTo(
                            _scroller.position.maxScrollExtent + 50,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      });
                    },
                    icon: const Icon(Icons.send))
              ],
            ),
          )
        ],
      ),
    );
  }
}
