import 'package:flutter/material.dart';
import '../../models/login_view_model.dart';
import '../widgets/popCard.dart';
import '../widgets/myButton.dart';
import '../widgets/myTextField.dart';
import '../../../common/common.dart';

class LoginView extends StatelessWidget {
  final LoginViewModel loginViewModel;
  final void Function(String email) onEmail;
  final void Function(String password) onPassword;
  final void Function(bool value) onToggleRememberMe;
  final VoidCallback onForgotPassword;
  final VoidCallback onLogin;

  const LoginView({
    Key key,
    this.loginViewModel,
    this.onEmail,
    this.onPassword,
    this.onForgotPassword,
    this.onLogin,
    this.onToggleRememberMe,
  }) : super(key: key);

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
                  'Log in',
                  style: context.headline1,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Text(
                    'welcome back',
                    style: context.subtitle2,
                  ),
                ),
                MyTextField(
                    title: 'e-mail',
                    initialValue: loginViewModel.email,
                    error: loginViewModel.emailError,
                    onChanged: onEmail),
                MyTextField(
                    title: 'password',
                    obscureText: true,
                    initialValue: loginViewModel.password,
                    error: loginViewModel.passwordError,
                    onChanged: onPassword),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: loginViewModel.rememberMe,
                        onChanged: onToggleRememberMe,
                        checkColor: Color(0xffa3a3a3),
                        activeColor: Color(0xffe3e3e3),
                      ),
                      Text(
                        'Remember Me',
                        style: context.subtitle2,
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: onForgotPassword,
                          child: Text('Forgot Password?'))
                    ],
                  ),
                ),
                MyButton(
                  isLoading: loginViewModel.isLoggingIn,
                  text: 'Log back in',
                  onPressed: onLogin,
                ),
                90.vSpace,
                Center(child: Image.asset('assets/4.jpg')),
                Center(
                  child: Text(
                    'Good to see you back',
                    style: context.subtitle2,
                  ),
                )
              ],
            ),
          ),
        ),
        PopCard(),
      ],
    ));
  }
}
