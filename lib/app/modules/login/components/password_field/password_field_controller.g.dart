// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_field_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PasswordFieldController on _PasswordFieldControllerBase, Store {
  final _$passwordVisibleAtom =
      Atom(name: '_PasswordFieldControllerBase.passwordVisible');

  @override
  bool get passwordVisible {
    _$passwordVisibleAtom.reportRead();
    return super.passwordVisible;
  }

  @override
  set passwordVisible(bool value) {
    _$passwordVisibleAtom.reportWrite(value, super.passwordVisible, () {
      super.passwordVisible = value;
    });
  }

  @override
  String toString() {
    return '''
passwordVisible: ${passwordVisible}
    ''';
  }
}
