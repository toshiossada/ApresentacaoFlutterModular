import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'password_field_controller.g.dart';

@Injectable()
class PasswordFieldController = _PasswordFieldControllerBase
    with _$PasswordFieldController;

abstract class _PasswordFieldControllerBase with Store {
  @observable
  bool passwordVisible = false;
}
