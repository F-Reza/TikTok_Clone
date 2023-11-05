
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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/videos/${widget.url}');
    _controller.addListener(() { });
    _controller.setLooping(true);
    _controller.initialize();
    _controller.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoPlayer(_controller),
        Positioned(
          left: 20, bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white),),
                const Text('Here is tha video description',
                    style: TextStyle(fontSize: 18,color: Colors.white70),),
              ],
            )),
        const Positioned(
          right: 15, bottom: 50,
            child: Column(
              children: [
                CircleAvatar(backgroundImage: AssetImage('assets/images/user.png',),),
                ItemReact(icon: Icons.favorite, text: '28.5k'),
                ItemReact(icon: Icons.comment, text: '30'),
                ItemReact(icon: Icons.bookmark, text: '10'),
                ItemReact(icon: Icons.shortcut, text: '30'),
              ],
            )),
      ],
    );
  }
}


class ItemReact extends StatelessWidget {
  final IconData icon;
  final String text;
  const ItemReact({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Icon(icon, size: 35, color: Colors.white),
          const SizedBox(height: 3,),
          Text(text, style: Theme.of(context).textTheme.bodySmall
              ?.copyWith(color: Colors.white,fontSize: 16),),
        ],
      ),
    );
  }
}
