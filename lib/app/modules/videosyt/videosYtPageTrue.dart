import 'package:flutter/material.dart';
import 'package:teste_slidy/app/modules/videosyt/videosyt_page.dart';

class VideoTrueYt extends StatefulWidget {
  @override
  _VideoTrueYtState createState() => _VideoTrueYtState();
}

class _VideoTrueYtState extends State<VideoTrueYt> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        VideosytPage(videoUrl: "https://www.youtube.com/watch?v=BJnXA1Il64g",),
      ],
    );
  }
}