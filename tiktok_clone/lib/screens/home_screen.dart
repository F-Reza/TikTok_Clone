import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          scrollDirection: Axis.vertical,
          children: [
            //
          ],
        )
      ],
    );
  }
}
