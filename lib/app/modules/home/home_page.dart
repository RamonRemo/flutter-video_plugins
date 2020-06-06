import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_slidy/app/modules/videosyt/videosYtPageTrue.dart';
import 'package:teste_slidy/app/modules/videosyt/videos_yt_2.dart';
import 'package:teste_slidy/app/modules/videosyt/videosapi_page.dart';
import 'package:teste_slidy/app/modules/videosyt/videosyt_page.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(width: double.infinity),
          FlatButton(onPressed: () {Navigator.pushNamed(context, '/videos');}, child: Text("Videos: Plugin Chewie")),
          FlatButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => VideoTrueYt(),),);}, child: Text("Videos: Plugin youtube_player_flutter")),
          FlatButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => VideosApiYt(),),);}, child: Text("Videos: Plugin flutter_youtube")),
          FlatButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => VideosapiPage(),),);}, child: Text("Videos: Plugin youtube_api")),
          
        ],
      ),
    );
  }
}
