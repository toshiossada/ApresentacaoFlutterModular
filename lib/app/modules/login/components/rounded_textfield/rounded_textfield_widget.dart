import 'package:flutter/material.dart';

class RoundedTextFieldWidget extends StatelessWidget {
  Function onSaved;
  Function validator;
  Function onTap;
  Function onChanged;
  String labelText;
  String initialValue;
  TextEditingController controller;
  bool readOnly;
  bool obscureText;
  int maxLines;
  Color backgroundColor;
  Color fontColor;
  Widget suffixIcon;
  bool showBorder;
  Color labelStyleColor;

  RoundedTextFieldWidget({
    this.onSaved,
    this.validator,
    this.labelText,
    this.onChanged,
    this.controller,
    this.onTap,
    this.suffixIcon,
    this.showBorder = true,
    this.obscureText = false,
    this.readOnly = false,
    this.maxLines = 1,
    this.backgroundColor = Colors.transparent,
    this.labelStyleColor,
    @required this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextFormField(
        readOnly: readOnly,
        controller: this.controller,
        obscureText: this.obscureText,
        keyboardType: TextInputType.text,
        maxLines: this.maxLines,
        style: TextStyle(color: fontColor),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          border: showBorder ? null : InputBorder.none,
          suffixIcon: suffixIcon,
          fillColor: Colors.greenAccent,
          labelText: this.labelText,
          labelStyle: TextStyle(
            color: labelStyleColor == null ? Colors.black : labelStyleColor,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        validator: this.validator,
        onTap: onTap,
        onSaved: this.onSaved ?? (v) {},
        onChanged: this.onChanged ?? (v) {},
      ),
    );
  }
}
