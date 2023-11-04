import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile',style: TextStyle(color: Colors.white,fontSize: 25),),
    );
  }
}
