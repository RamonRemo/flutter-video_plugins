import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:video_player/video_player.dart';
import 'videos_controller.dart';

class VideosPage extends StatefulWidget {
  final String title;
  final VideoPlayerController videoPlayerController;
  final bool looping;
  const VideosPage(
      {Key key,
      this.title = "Videos",
      @required this.videoPlayerController,
      this.looping})
      : super(key: key);

  @override
  _VideosPageState createState() => _VideosPageState();
}

class _VideosPageState extends ModularState<VideosPage, VideosController> {
  ChewieController _chewieController;

  @override
  void initState() {
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 2 / 1, 
      autoInitialize: true,
      looping: widget.looping,
      errorBuilder: (context, errorMessage) => Center(
        child: Text(
          errorMessage,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(controller: _chewieController,),
    );
  }
}
