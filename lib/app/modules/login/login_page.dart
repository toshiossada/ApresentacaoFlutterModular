import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/circular_button/circular_button_widget.dart';
import 'components/password_field/password_field_widget.dart';
import 'components/rounded_textfield/rounded_textfield_widget.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          RoundedTextFieldWidget(
            labelText: 'Usuário',
            fontColor: Colors.black,
            backgroundColor: Colors.transparent,
            onChanged: (v) => controller.login = v,
            validator: (value) {
              if (value.isEmpty)
                return 'Usuário Inválido';
              else
                return null;
            },
          ),
          PasswordFieldWidget(
            onChanged: (v) => controller.password = v,
            validator: (value) {
              if (value.isEmpty)
                return 'Senha Inválido';
              else
                return null;
            },
            label: 'Senha',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircularButtonWidget(
              width: 100,
              backgroundColor: Colors.blue[200],
              label: "Entrar",
              onTap: () async {
                Modular.to.pushReplacementNamed('/home');
              },
            ),
          ),
        ],
      ),
    );
  }
}
