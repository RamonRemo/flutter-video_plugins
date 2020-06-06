import 'package:mobx/mobx.dart';

part 'videosyt_controller.g.dart';

class VideosytController = _VideosytControllerBase with _$VideosytController;

abstract class _VideosytControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
