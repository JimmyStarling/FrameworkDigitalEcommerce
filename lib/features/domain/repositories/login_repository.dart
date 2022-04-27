import 'package:dartz/dartz.dart';
import 'package:framework_digital_ecommerce/core/exceptions/failures.dart';
import 'package:framework_digital_ecommerce/features/domain/entities/user_info_entity.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoggedUserInfo>> verifyAuthCode({String verificationId, String code});
  Future<Either<Failure, LoggedUserInfo>> loginEmail({String? email, String? password});
  Future<Either<Failure, LoggedUserInfo>> loginPhone({String phoneNumber});
  Future<Either<Failure, LoggedUserInfo>> loggedUser();
  Future<Either<Failure, Unit>> logout();
}