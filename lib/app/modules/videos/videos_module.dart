import 'package:teste_slidy/app/modules/videos/videos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_slidy/app/modules/videos/videos_page_2.dart';

class VideosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => VideosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => VideosPage2()),
        Router("/videos", module: VideosModule()),
      ];

  static Inject get to => Inject<VideosModule>.of();
}
