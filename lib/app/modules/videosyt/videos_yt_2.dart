import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'videosyt_controller.dart';

class VideosApiYt extends StatefulWidget {
  final String title;
  const VideosApiYt({Key key, this.title = "Videosyt"}) : super(key: key);

  @override
  _VideosytPageState createState() => _VideosytPageState();
}

class _VideosytPageState extends ModularState<VideosApiYt, VideosytController> {
  TextEditingController textEditingControllerUrl = new TextEditingController();
  TextEditingController textEditingControllerId = new TextEditingController();

  void playYoutubeVideo() {
    FlutterYoutube.playYoutubeVideoByUrl(
      apiKey: "YOUR YOUTUBE API KEY HERE-wQcPho",
      videoUrl: "https://www.youtube.com/watch?v=wgTBLj7rMPM",
    );
  }

  void playYoutubeVideoEdit() {
    FlutterYoutube.onVideoEnded.listen((onData) {
      //perform your action when video playing is done
    });

    FlutterYoutube.playYoutubeVideoByUrl(
      apiKey: "YOUR YOUTUBE API KEY HERE-wQcPho",
      videoUrl: textEditingControllerUrl.text,
    );
  }

  void playYoutubeVideoIdEdit() {
    FlutterYoutube.onVideoEnded.listen((onData) {
      //perform your action when video playing is done
    });

    FlutterYoutube.playYoutubeVideoById(
      apiKey: "YOUR YOUTUBE API KEY HERE-wQcPho",
      videoId: textEditingControllerId.text,
    );
  }

  void playYoutubeVideoIdEditAuto() {
    FlutterYoutube.onVideoEnded.listen((onData) {
      //perform your action when video playing is done
    });

    FlutterYoutube.playYoutubeVideoById(
        apiKey: "YOUR YOUTUBE API KEY HERE-wQcPho",
        videoId: textEditingControllerId.text,
        autoPlay: true);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FlutterYoutube.playYoutubeVideoByUrl(
          apiKey: "YOUR YOUTUBE API KEY HERE-wQcPho",
          videoUrl: "https://www.youtube.com/watch?v=wgTBLj7rMPM",
          fullScreen: false,
        ),
      ],
    );
  }
}

// YOUR YOUTUBE API KEY HERE-wQcPho
