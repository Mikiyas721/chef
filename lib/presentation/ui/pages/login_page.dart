import 'package:flutter/material.dart';
import '../../models/login_view_model.dart';
import '../views/login_view.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginView(
      loginViewModel: LoginViewModel(),
      onLogin: (){},
      onForgotPassword: (){},
    );
  }
}
