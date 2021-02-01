import 'package:flutter/material.dart';
import '../widgets/popCard.dart';
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
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 170),
                  Text(
                    'Create an account',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      'and become a real chef!',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Row(
                      children: [
                        Checkbox(value: true, onChanged: (bool value) {},checkColor: Color(0xffa3a3a3),activeColor: Color(0xffe3e3e3),),
                        Text(
                          'I agree to the terms of service',
                          style: Theme.of(context).textTheme.subtitle2,
                        )
                      ],
                    ),
                  ),
                  MyButton(
                    model: ButtonModel(
                        isLoading: false, label: 'Create your free account'),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Center(child: Image.asset('assets/3.jpg')),
                  Center(
                    child: Text(
                      '452 people joined us today',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  )
                ],
              ),
            ),
          ),
          PopCard()
        ],
      ),
    );
  }
}
