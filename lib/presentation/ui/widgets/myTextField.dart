import 'package:flutter/material.dart';
import '../../models/textFieldModel.dart';

class MyTextField extends StatelessWidget {
  final TextFieldModel model;
  final void Function(String value) onChanged;
  final void Function(String value) onSubmitted;
  final TextInputType keyBoardType;
  final bool obscureText;
  final String title;

  const MyTextField(
      {Key key,
      @required this.title,
      @required this.model,
      @required this.onChanged,
      this.onSubmitted,
      this.keyBoardType = TextInputType.text,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5),
      decoration: BoxDecoration(
          color: Color(0xffefefef),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: TextField(
          obscureText: obscureText,
          keyboardType: keyBoardType,
          decoration: InputDecoration(
              labelText: title,
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 5, bottom: 5),
              errorText: model.error,
              labelStyle: TextStyle(color: Color(0xffb3b3b3))),
          onChanged: onChanged,
          onSubmitted: onSubmitted),
    );
  }
}
