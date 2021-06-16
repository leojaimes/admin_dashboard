import 'package:auth/src/domain/entities/auth_response.dart';
 
import 'package:auth/src/data/models/registering_user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';

import '../repositories/iauth_repository.dart';

///
class Register {
  ///
  Register({required this.repository});

  ///
  final IAuthRepository repository;

  /// Callable class method
  Future<Either<Failure, AuthResponse>> call(RegisteringUserModel user) async {
    return await repository.register(user);
  }
}
