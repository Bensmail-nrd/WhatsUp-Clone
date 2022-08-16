import 'package:clone_whatsup/UI/contacts_list.dart';
import 'package:flutter/material.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: const Text("What's Up"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(text: "Chat"),
                Tab(text: "Status"),
                Tab(text: "Calls"),
              ],
            )),
        body: ContactList(),
      ),
    );
  }
}
