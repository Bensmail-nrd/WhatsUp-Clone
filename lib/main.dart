import 'package:clone_whatsup/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'UI/mobile_layout.dart';
import 'UI/web_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Material App is about to get called");
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(primaryColor: const Color.fromARGB(255, 11, 40, 80)),
      home: ResponsiveLayout(
          MobileScreenLayout: MobileScreenLayout(),
          WebScreenLayout: WebScreenLayout()),
    );
  }
}
