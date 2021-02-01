import 'package:flutter/material.dart';
import '../../models/buttonModel.dart';

class MyButton extends StatelessWidget {
  final ButtonModel model;
  final void Function() onPressed;
  final double minWidth;
  const MyButton({Key key, @required this.model, @required this.onPressed, this.minWidth = double.infinity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Color(0x66dff3e6),
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ButtonTheme(
          minWidth: minWidth,
          child: FlatButton(
            padding: EdgeInsets.only(top:15,bottom: 15),
            onPressed: onPressed,
            color: Theme.of(context).buttonColor,
            textColor: Colors.white,
            child:
                model.isLoading ? CircularProgressIndicator() : Text(model.label),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
        ),
      ),
    );
  }
}
