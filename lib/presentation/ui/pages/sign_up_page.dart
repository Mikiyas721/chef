import 'package:flutter/material.dart';
import '../../models/sign_up_view_model.dart';
import '../views/sign_up_view.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SignUpView(
      signUpViewModel: SignUpViewModel(),
      onCreateAccount: (){},
    );
  }
}
