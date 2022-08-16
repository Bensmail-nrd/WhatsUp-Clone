import 'package:clone_whatsup/UI/chat_list.dart';
import 'package:clone_whatsup/utils/info.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: info.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            if (MediaQuery.of(context).size.width <= 700) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ChatList(kWeb: false),
              ));
            }
          },
          title: Text(info[index]["name"].toString()),
          subtitle: Text(info[index]["message"].toString()),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              info[index]["profilePic"].toString(),
            ),
          ),
          trailing: Text(info[index]["time"].toString()),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          indent: 40,
          endIndent: 40,
          thickness: 0.5,
          color: Colors.white30,
        );
      },
    );
  }
}
