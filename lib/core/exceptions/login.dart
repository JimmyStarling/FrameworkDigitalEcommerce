import 'failures.dart';

class LoginEmailException extends Failure {
  final String message;
  const LoginEmailException({required this.message});
  @override
  List<Object?> get props => throw message;
}

class GetLoggedUserException extends Failure {
  final String message;
  const GetLoggedUserException({required this.message});
  
  @override
  List<Object?> get props => throw message;
}

class LogoutException extends Failure {
  final String message;
  const LogoutException({required this.message});
  @override
  List<Object?> get props => throw message;
}

class LoginPhoneException implements Failure {
  final String message;
  LoginPhoneException({required this.message});
  @override
  List<Object?> get props => throw message;
  @override
  bool? get stringify => throw message.toString();
}

class NotAutomaticRetrieved implements Failure {
  final String verificationId;
  final String message;
  NotAutomaticRetrieved(this.verificationId, {required this.message});
  @override
  List<Object?> get props => throw message;
  @override
  bool? get stringify => throw message.toString();
}