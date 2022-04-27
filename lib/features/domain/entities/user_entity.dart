import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String email;
  final String name;
  final String phoneNumber;

  const User({required this.email, required this.name, required this.phoneNumber});

  @override
  List<Object> get props => [email, name, phoneNumber];
}