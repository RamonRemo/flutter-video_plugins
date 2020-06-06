import 'package:mobx/mobx.dart';

part 'videos_controller.g.dart';

class VideosController = _VideosControllerBase with _$VideosController;

abstract class _VideosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
