import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'details_controller.g.dart';

@Injectable()
class DetailsController = _DetailsControllerBase with _$DetailsController;

abstract class _DetailsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
