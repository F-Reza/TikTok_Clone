import 'package:flutter/material.dart';
import 'package:tiktok_clone/widgets/item_video.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          scrollDirection: Axis.vertical,
          children: const [
            ItemVideo(title: 'Here is video 1', url: 'video1.mp4'),
            ItemVideo(title: 'Here is video 2', url: 'video2.mp4'),
            ItemVideo(title: 'Here is video 3', url: 'video3.mp4'),
            ItemVideo(title: 'Here is video 4', url: 'video4.mp4'),
          ],
        ),
        const Positioned(
          right: 15, top: 15,
            child: Icon(Icons.search, size: 35, color: Colors.white,),),
      ],
    );
  }
}
