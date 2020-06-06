import 'package:teste_slidy/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_slidy/app/modules/home/home_page.dart';
import 'package:teste_slidy/app/modules/videos/videos_controller.dart';
import 'package:teste_slidy/app/modules/videos/videos_module.dart';
import 'package:teste_slidy/app/modules/videosyt/videosyt_controller.dart';
import 'package:teste_slidy/app/modules/videosyt/videosyt_module.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => VideosytController()),
        Bind((i) => VideosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router("/videos",module: VideosModule()),
        Router("/videosyt",module: VideosytModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
