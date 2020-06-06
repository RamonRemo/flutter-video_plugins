import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'videosyt_controller.dart';

class VideosytPage extends StatefulWidget {
  final String title;
  final String videoUrl;
  const VideosytPage({Key key, this.title = "Videosyt", this.videoUrl}) : super(key: key);

  @override
  _VideosytPageState createState() => _VideosytPageState(videoUrl);
}

class _VideosytPageState
    extends ModularState<VideosytPage, VideosytController> {
  String videoUrl = 'https://www.youtube.com/watch?v=BJnXA1Il64g';

  YoutubePlayerController ytController;

  _VideosytPageState(this.videoUrl);

  @override
  void initState() {
    ytController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoUrl),
        flags: YoutubePlayerFlags(
        autoPlay: false,
        disableDragSeek: true,
        // hideThumbnail: true,
      ),);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: ytController
      );
  }

}
