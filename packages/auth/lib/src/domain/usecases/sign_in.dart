import 'package:auth/src/domain/entities/auth_response.dart';
import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';

import '../repositories/iauth_repository.dart';
///
class SignIn {
  ///
  SignIn({required this.repository})  ;
  ///
  final IAuthRepository repository;

  /// Callable class method
  Future<Either<Failure, AuthResponse>> call(   email,    password) async {
    return await repository.signIn(  email, password);
  }
}
