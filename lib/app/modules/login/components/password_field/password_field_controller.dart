import 'package:mobx/mobx.dart';

part 'password_field_controller.g.dart';

class PasswordFieldController = _PasswordFieldControllerBase
    with _$PasswordFieldController;

abstract class _PasswordFieldControllerBase with Store {
  @observable
  bool passwordVisible = false;
}
