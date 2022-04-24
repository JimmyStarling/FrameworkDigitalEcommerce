import 'package:equatable/equatable.dart';

class LoginCredentials extends Equatable {
  final String email;
  final String password;
  final String phoneNumber;

  const LoginCredentials({
    required this.email,
    required this.password,
    required this.phoneNumber,
  });

  @override
  List<Object?> get props => [email, password, phoneNumber];

}