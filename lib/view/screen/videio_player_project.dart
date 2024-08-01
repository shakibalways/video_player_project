import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class YoutubeVideoPlayer extends StatefulWidget {
  const YoutubeVideoPlayer({super.key});

  @override
  State<YoutubeVideoPlayer> createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  bool isVideoinitialized = false;
  @override
  void initState() {
    super.initState();

    videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse("https://www.youtube.com/watch?v=SkoUu1vhgbg"));
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
    );
    videoPlayerController.initialize().then((value) => setState(() {
          isVideoinitialized = true;
        }));
  }

  @override
  Widget build(BuildContext context) {
    if(isVideoinitialized) {
      return AspectRatio(
        aspectRatio: videoPlayerController.value.aspectRatio,
        child: Chewie(controller: chewieController),
      );
    }else{
      return CircularProgressIndicator();
    }
  }
}
