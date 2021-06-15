import 'package:auth/src/domain/entities/auth_response.dart';
import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';

/// Repository interface for auth
abstract class IAuthRepository {
  ///
  Future<Either<Failure, AuthResponse>> signIn(String  email, String password);
}
