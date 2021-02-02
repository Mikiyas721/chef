import 'package:flutter/material.dart';
import './presentation/ui/pages/login_page.dart';
import './presentation/ui/pages/sign_up_page.dart';
import './presentation/ui/pages/opening_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.black),
            subtitle2: TextStyle(fontSize: 12, color: Color(0xffcacaca),height: 1.7),
          ),
          buttonColor: Color(0xff20c060)),
      routes: route,
      initialRoute: '/',
    );
  }
}

final route = {
  '/': (BuildContext context) => OpeningPage(),
  '/loginPage': (BuildContext context) => LoginPage(),
  '/signUpPage': (BuildContext context) => SignUpPage(),
};
