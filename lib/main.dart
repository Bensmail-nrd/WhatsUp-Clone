import 'package:flutter/material.dart';

import 'mobile_ui/mobile_layout.dart';
import 'web_ui/web_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark()
            .copyWith(primaryColor: const Color.fromARGB(255, 11, 40, 80)),
        home: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 700) {
              return WebScreenLayout();
            } else {
              return MobileScreenLayout();
            }
          },
        ));
  }
}
