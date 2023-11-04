import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok_clone/screens/home_screen.dart';
import 'package:tiktok_clone/screens/main_screen.dart';
import 'package:tiktok_clone/screens/splash_screen.dart';

import 'screens/friends_screen.dart';
import 'screens/inbox_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok Clone',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.deepPurple
      ).copyWith(scaffoldBackgroundColor: Colors.black,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        MainScreen.routeName: (context) => const MainScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        FriendsScreen.routeName: (context) => const FriendsScreen(),
        InboxScreen.routeName: (context) => const InboxScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
      },
    );
  }
}

