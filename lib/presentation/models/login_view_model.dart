import 'package:equatable/equatable.dart';

class LoginViewModel extends Equatable {
  final String email;
  final String emailError;
  final String password;
  final String passwordError;
  final bool rememberMe;
  final bool isLoggingIn;

  const LoginViewModel({
    this.email,
    this.emailError,
    this.password,
    this.passwordError,
    this.rememberMe = false,
    this.isLoggingIn = false,
  });

  @override
  List<Object> get props => [
    email,
    emailError,
    password,
    passwordError,
    rememberMe,
    isLoggingIn,
  ];
}
