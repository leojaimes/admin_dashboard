import 'package:auth/src/domain/entities/auth_response.dart';
 
import 'package:auth/src/data/models/registering_user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';

/// Repository interface for auth
abstract class IAuthRepository {
  ///
  Future<Either<Failure, AuthResponse>> signIn(String  email, String password);
  ///
  Future<Either<Failure, AuthResponse>> register(RegisteringUserModel  user);
}
