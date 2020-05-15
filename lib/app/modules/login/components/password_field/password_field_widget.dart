import 'package:apesentacaoModular/app/modules/login/components/rounded_textfield/rounded_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'password_field_controller.dart';

class PasswordFieldWidget extends StatelessWidget {
  var _passwordFieldController = Modular.get<PasswordFieldController>();
  Function onChanged;
  String label;
  Function validator;
  PasswordFieldWidget({this.onChanged, @required this.label, this.validator});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Observer(
        builder: (_) => RoundedTextFieldWidget(
          labelText: label,
          fontColor: Colors.black,
          backgroundColor: Colors.transparent,
          obscureText: !_passwordFieldController.passwordVisible,
          onChanged: onChanged,
          validator: validator,
          suffixIcon: IconButton(
            onPressed: () {
              _passwordFieldController.passwordVisible =
                  !_passwordFieldController.passwordVisible;
            },
            icon: Icon(
              _passwordFieldController.passwordVisible
                  ? FontAwesomeIcons.eyeSlash
                  : FontAwesomeIcons.eye,
              color: Theme.of(context).accentColor.withOpacity(0.3),
            ),
          ),
        ),
      ),
    );
  }
}
