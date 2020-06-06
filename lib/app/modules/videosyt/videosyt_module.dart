import 'package:teste_slidy/app/modules/videosyt/videosyt_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_slidy/app/modules/videosyt/videosyt_page.dart';

class VideosytModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => VideosytController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => VideosytPage()),
        Router("/videosyt", module: VideosytModule()),
      ];

  static Inject get to => Inject<VideosytModule>.of();
}
