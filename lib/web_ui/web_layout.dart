import 'package:clone_whatsup/web_ui/web_profile.dart';
import 'package:clone_whatsup/widgets/contacts_list.dart';
import 'package:clone_whatsup/widgets/search.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: const [
                Profile(),
                Search(),
                Expanded(child: ContactList()),
              ],
            ),
          ),
          const Expanded(
            flex: 7,
            child: ChatList(
              kWeb: true,
            ),
          ),
        ],
      ),
    );
  }
}
