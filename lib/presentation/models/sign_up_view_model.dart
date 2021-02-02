import 'package:equatable/equatable.dart';

class SignUpViewModel extends Equatable {
  final String name;
  final String nameError;
  final String email;
  final String emailError;
  final String password;
  final String passwordError;
  final bool hasAgreedToTerms;
  final bool isCreatingAccount;

  const SignUpViewModel({
    this.name,
    this.nameError,
    this.email,
    this.emailError,
    this.password,
    this.passwordError,
    this.hasAgreedToTerms = false,
    this.isCreatingAccount = false,
  });

  @override
  List<Object> get props => [
    name,
    nameError,
    email,
    emailError,
    password,
    passwordError,
    hasAgreedToTerms,
    isCreatingAccount,
  ];
}
