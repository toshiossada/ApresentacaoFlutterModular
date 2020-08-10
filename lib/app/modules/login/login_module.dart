import 'package:apesentacaoModular/app/modules/login/components/password_field/password_field_controller.dart';
import 'package:apesentacaoModular/app/modules/login/login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:apesentacaoModular/app/modules/login/login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PasswordFieldController,
        $LoginController,
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
