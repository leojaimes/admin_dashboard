import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';

import '../repositories/iauth_repository.dart';

///
class ValidateAuth {
  ///
  ValidateAuth({required this.repository});

  ///
  final IAuthRepository repository;

  /// Callable class method
  Future<Either<Failure, bool>> call( ) async {
    return await repository.validateToken( );
  }
}
