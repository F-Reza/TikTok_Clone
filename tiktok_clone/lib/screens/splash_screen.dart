import 'package:flutter/material.dart';
import 'package:tiktok_clone/screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    // Simulate a delay before navigating to the main screen
    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to the main screen
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const MainScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('images/tiktok-logo.png',height: 180,),
      ),
    );
  }
}