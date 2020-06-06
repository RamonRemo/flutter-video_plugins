import 'package:flutter/material.dart';
import 'package:youtube_api/youtube_api.dart';

class VideosapiPage extends StatefulWidget {
  final String title;
  const VideosapiPage({Key key, this.title = "Videosapi"}) : super(key: key);

  @override
  _VideosapiPageState createState() => _VideosapiPageState();
}

class _VideosapiPageState extends State<VideosapiPage> {
  static String key =
      "YOUR YOUTUBE API KEY HERE"; // ** ENTER YOUTUBE API KEY HERE **

  YoutubeAPI ytApi = new YoutubeAPI(key);
  List<YT_API> ytResult = [];

  callAPI() async {
    print('UI callled');
    String query = "FLUTTER";
    ytResult = await ytApi.search(query);
    setState(() {
      print('UI Updated');
    });
  }

  @override
  void initState() {
    super.initState();
    callAPI();
    print('hello');
  }

  Widget listItem(index) {
    return new Card(
      child: new Container(
        margin: EdgeInsets.symmetric(vertical: 7.0),
        padding: EdgeInsets.all(12.0),
        child: new Row(
          children: <Widget>[
            new Image.network(
              ytResult[index].thumbnail['default']['url'],
            ),
            new Padding(padding: EdgeInsets.only(right: 20.0)),
            new Expanded(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  new Text(
                    ytResult[index].title,
                    softWrap: true,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  new Padding(padding: EdgeInsets.only(bottom: 1.5)),
                  new Text(
                    ytResult[index].channelTitle,
                    softWrap: true,
                  ),
                  new Padding(padding: EdgeInsets.only(bottom: 3.0)),
                  new Text(
                    ytResult[index].url,
                    softWrap: true,
                  ),
                ]))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: Text('Youtube API'),
          ),
          body: new Container(
            child: ListView.builder(
                itemCount: ytResult.length,
                itemBuilder: (_, int index) => listItem(index)),
          )),
    );
  }
}
