import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/screens/friends_screen.dart';
import 'package:tiktok_clone/screens/home_screen.dart';
import 'package:tiktok_clone/screens/inbox_screen.dart';
import 'package:tiktok_clone/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = '/';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _index = 0;
  final _widgets = [
    const HomeScreen(),
    const FriendsScreen(),
    const InboxScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgets[_index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        currentIndex: _index,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.home_16_regular),
            activeIcon: Icon(FluentIcons.home_20_filled),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.people_16_regular),
            activeIcon: Icon(FluentIcons.people_20_filled),
            label: 'Friends'
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.chat_16_regular),
            activeIcon: Icon(FluentIcons.chat_20_filled),
            label: 'Inbox'
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.person_16_regular),
            activeIcon: Icon(FluentIcons.person_20_filled),
            label: 'Profile'
          ),

        ],
      ),
    );
  }
}
