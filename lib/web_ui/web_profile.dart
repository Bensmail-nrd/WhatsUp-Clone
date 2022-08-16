import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
            radius: 20,
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          )
        ],
      ),
    );
  }
}
