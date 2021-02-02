import 'package:flutter/material.dart';
import '../widgets/popCard.dart';
import '../widgets/myButton.dart';
import '../widgets/myTextField.dart';
import '../../models/sign_up_view_model.dart';
import '../../../common/common.dart';

class SignUpView extends StatelessWidget {
  final SignUpViewModel signUpViewModel;
  final void Function(String name) onName;
  final void Function(String email) onEmail;
  final void Function(String password) onPassword;
  final void Function(bool agreed) onToggleAgreeTerms;
  final VoidCallback onCreateAccount;

  const SignUpView(
      {Key key,
      this.signUpViewModel,
      this.onName,
      this.onEmail,
      this.onPassword,
      this.onToggleAgreeTerms,
      this.onCreateAccount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: 20.hPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  170.vSpace,
                  Text(
                    'Create an account',
                    style: context.headline1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Text(
                      'and become a real chef!',
                      style: context.subtitle2,
                    ),
                  ),
                  MyTextField(
                    title: 'name',
                    initialValue: signUpViewModel.name,
                    error: signUpViewModel.nameError,
                    onChanged: onName,
                  ),
                  MyTextField(
                      title: 'e-mail',
                      initialValue: signUpViewModel.email,
                      error: signUpViewModel.emailError,
                      onChanged: onEmail),
                  MyTextField(
                      title: 'password',
                      obscureText: true,
                      initialValue: signUpViewModel.password,
                      error: signUpViewModel.passwordError,
                      onChanged: onPassword),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Row(
                      children: [
                        Checkbox(
                          value: signUpViewModel.hasAgreedToTerms,
                          onChanged: onToggleAgreeTerms,
                          checkColor: Color(0xffa3a3a3),
                          activeColor: Color(0xffe3e3e3),
                        ),
                        Text(
                          'I agree to the terms of service',
                          style: context.subtitle2,
                        )
                      ],
                    ),
                  ),
                  MyButton(
                      text: 'Create your free account',
                      isLoading: signUpViewModel.isCreatingAccount,
                      onPressed: onCreateAccount),
                  70.vSpace,
                  Center(child: Image.asset('assets/3.jpg')),
                  Center(
                    child: Text(
                      '452 people joined us today',
                      style: context.subtitle2,
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
