import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_slidy/app/modules/videos/videos_page.dart';
import 'package:video_player/video_player.dart';
import 'videos_controller.dart';

class VideosPage2 extends StatefulWidget {
  final String title;

  const VideosPage2({Key key, this.title}) : super(key: key);

  @override
  _VideosPageState createState() => _VideosPageState();
}

class _VideosPageState extends ModularState<VideosPage2, VideosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Videos Chewie Test"),
        centerTitle: true,
      ),
      body: buildBody(),
    );
  }

  buildBody() {
    return ListView(
      children: <Widget>[
        VideosPage(
          videoPlayerController:
              VideoPlayerController.asset('videos/brabo.mp4'),
          looping: true,    
        ),
      ],
    );
  }
}
