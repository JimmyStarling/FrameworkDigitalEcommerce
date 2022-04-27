
import 'failures.dart';

class ConnectionException extends Failure {
  @override
  final String message;
  ConnectionException({required this.message});

  @override
  List<Object?> get props => throw message;
}