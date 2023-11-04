
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ItemVideo extends StatefulWidget {
  static const String routeName = '/video';
  final String title, url;
  const ItemVideo({super.key, required this.title, required this.url});

  @override
  State<ItemVideo> createState() => _ItemVideoState();
}

class _ItemVideoState extends State<ItemVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('videos/${widget.url}');
    _controller.addListener(() { });
    _controller.setLooping(true);
    _controller.initialize();
    _controller.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
