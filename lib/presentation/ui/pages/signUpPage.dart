import 'package:flutter/material.dart';
import '../../models/buttonModel.dart';
import '../../models/textFieldModel.dart';
import '../widgets/myButton.dart';
import '../widgets/myTextField.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Card(
              child: IconButton(
                  icon: Icon(Icons.arrow_back_outlined),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ),
          Column(
            children: [
              Text(
                'Create an Account',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'and become a real chef!',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              MyTextField(
                  model: TextFieldModel(),
                  title: 'name',
                  onChanged: (value) {}),
              MyTextField(
                  model: TextFieldModel(),
                  title: 'e-mail',
                  onChanged: (value) {}),
              MyTextField(
                  model: TextFieldModel(),
                  title: 'password',
                  obscureText: true,
                  onChanged: (value) {}),
              Row(
                children: [
                  Checkbox(value: null, onChanged: (bool value) {}),
                  Text(
                    'I agree to the terms of service',
                    style: Theme.of(context).textTheme.subtitle2,
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  MyButton(
                    model: ButtonModel(
                        isLoading: false, label: 'Create your free account'),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                children: [
                  Center(child: Image.asset('assets/3.jpg')),
                ],
              ),
              Row(
                children: [
                  Center(
                    child: Text(
                      '452 people joined us today',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
