import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  static const String routeName = '/friends';
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Friends',style: TextStyle(color: Colors.white,fontSize: 25),),
    );
  }
}
