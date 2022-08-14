import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  Widget WebScreenLayout;

  Widget MobileScreenLayout;

  ResponsiveLayout(
      {Key? key,
      required this.MobileScreenLayout,
      required this.WebScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Responsive has been called");
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 700) {
          return WebScreenLayout;
        } else {
          return MobileScreenLayout;
        }
      },
    );
  }
}
