import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 18.0),
          hintText: "Search ...",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        ),
      ),
    );
  }
}
