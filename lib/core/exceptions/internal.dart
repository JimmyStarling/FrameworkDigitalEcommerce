import 'failures.dart';

class InternalException implements Failure {
  @override
  final String message;
  InternalException({required this.message});

  @override
  List<Object?> get props => throw message;

  @override
  bool? get stringify => throw message.toString();
}