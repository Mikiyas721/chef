import 'package:flutter/material.dart';

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
              PhysicalModel(
                color: Color(0x66dff3e6),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signUpPage');
                    },
                    padding: EdgeInsets.only(
                        top: 13, bottom: 13, right: 40, left: 40),
                    color: Theme.of(context).buttonColor,
                    textColor: Colors.white,
                    child: Text('Sign up'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/loginPage');
                },
                padding:
                    EdgeInsets.only(top: 13, bottom: 13, right: 45, left: 45),
                color: Color(0xffe3f4ea),
                textColor: Theme.of(context).buttonColor,
                child: Text('Log in'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
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
