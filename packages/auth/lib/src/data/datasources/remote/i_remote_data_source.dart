import 'package:auth/src/domain/entities/auth_response.dart';

import 'package:auth/src/data/models/registering_user_model.dart';
import 'package:auth/src/domain/entities/register_user_response.dart';

// ignore: public_member_api_docs
abstract class IRemoteDataSource {
  /// Signin with email and password
  /// [email]
  ///  [password]
  Future<AuthResponse> signin(String email, String password);

  ///Registering user
  Future<RegisterUserResponse> register(
      RegisteringUserModel user );

  Future<bool> validateToken(String? token);
}
