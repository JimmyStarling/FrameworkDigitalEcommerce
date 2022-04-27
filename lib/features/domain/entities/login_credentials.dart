import 'package:equatable/equatable.dart';
import 'package:string_validator/string_validator.dart' as validator;

class LoginCredentials extends Equatable{
  final String? email;
  final String? password;
  final String? phoneNumber;
  final String? code;
  final String? verificationId;

  const LoginCredentials._({
        this.phoneNumber, 
        this.verificationId, 
        this.email, 
        this.password, 
        this.code
      });

  @override
  List<Object?> get props => [];

  bool checkValues(value, lenght){
      return ["", null, false].contains(value != null) && value.lenght > lenght;
  }
  bool get isValidEmail => validator.isEmail(email as String);
  bool get isValidPassword =>
      checkValues(password, 8);
  bool get isValidphoneNumber =>
      checkValues(phoneNumber, 13);
  bool get isValidCode => 
      checkValues(code, 0);
  bool get isValidVerificationId =>
      checkValues(verificationId, 0);

  factory LoginCredentials.withEmailAndPassword(
      {required String email, required String password}) {
    return LoginCredentials._(
      email: email,
      password: password,
    );
  }

  factory LoginCredentials.withphoneNumber({required String phoneNumberNumber}) {
    return LoginCredentials._(
      phoneNumber: phoneNumberNumber,
    );
  }

  factory LoginCredentials.withVerificationCode(
      {required String code, required String verificationId}) {
    return LoginCredentials._(
      code: code,
      verificationId: verificationId,
    );
  }

}