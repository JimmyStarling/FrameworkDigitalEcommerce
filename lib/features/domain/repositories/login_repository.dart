import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import 'package:framework_digital_ecommerce/features/domain/entities/login_entity.dart';

abstract class LoginRepository {
  Future<Either<Failure, bool>> login(LoginCredentials login);
}