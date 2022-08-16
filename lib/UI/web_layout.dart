import 'package:clone_whatsup/UI/contacts_list.dart';
import 'package:clone_whatsup/UI/search.dart';
import 'package:clone_whatsup/UI/web_profile.dart';
import 'package:flutter/material.dart';

import 'chat_list.dart';

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
              children: [
                Profile(),
                Search(),
                Expanded(child: ContactList()),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              children: [
                // WebAppBar(),
                Expanded(
                    child: ChatList(
                  kWeb: true,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
