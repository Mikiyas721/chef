import 'package:flutter/material.dart';
import '../../models/buttonModel.dart';
import '../widgets/myButton.dart';

class OpeningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset('assets/1.jpg'),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Become a pro chef in your house',
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 30),
                child: Text(
                  'Join the biggest cooking community on the globe! Learn to cook or share your recipes with the world.',
                  style: Theme.of(context).textTheme.subtitle2,
                  textAlign: TextAlign.center,
                ),
              ),
              MyButton(
                model: ButtonModel(label: 'Sign up', isLoading: false),
                onPressed: () {
                  Navigator.pushNamed(context, '/signUpPage');
                },
                minWidth: 150,
              ),SizedBox(height: 5),
              ButtonTheme(
                minWidth: 150,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/loginPage');
                  },
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  color: Color(0xffe3f4ea),
                  textColor: Theme.of(context).buttonColor,
                  child: Text('Log in'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Image.asset('assets/2.jpg'),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  'Bring your own tools!',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
