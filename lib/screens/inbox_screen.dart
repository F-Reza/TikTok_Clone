import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  static const String routeName = '/inbox';
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Inbox',style: TextStyle(color: Colors.white,fontSize: 25),),
    );
  }
}
