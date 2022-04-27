import 'package:dartz/dartz.dart';
import 'package:framework_digital_ecommerce/core/exceptions/failures.dart';

abstract class ConnectivityService {
  Future<Either<Failure, Unit>> isOnline();
}