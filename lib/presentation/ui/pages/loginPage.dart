import 'package:flutter/material.dart';
import '../../models/buttonModel.dart';
import '../../models/textFieldModel.dart';
import '../../ui/widgets/myButton.dart';
import '../widgets/myTextField.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Card(
          child: IconButton(
              icon: Icon(Icons.arrow_back_outlined),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Log in',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'welcome back',
              style: Theme.of(context).textTheme.subtitle2,
            ),
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
                  'Remember Me',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Spacer(),
                TextButton(onPressed: () {}, child: Text('Forgot Password?'))
              ],
            ),
            Row(
              children: [
                MyButton(
                  model: ButtonModel(isLoading: false, label: 'Log back in'),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                Center(child: Image.asset('assets/4.jpg')),
              ],
            ),
            Row(
              children: [
                Center(
                  child: Text(
                    'Good to see you back',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    ));
  }
}
