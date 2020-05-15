import 'package:mobx/mobx.dart';

part 'circular_button_controller.g.dart';

class CircularButtonController = _CircularButtonControllerBase
    with _$CircularButtonController;

abstract class _CircularButtonControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
