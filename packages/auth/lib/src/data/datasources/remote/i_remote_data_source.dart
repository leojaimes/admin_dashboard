import 'package:auth/src/domain/entities/auth_response.dart';

// ignore: public_member_api_docs
abstract class IRemoteDataSource {


  /// Signin with email and password
  /// [email] 
  ///  [password]
  Future<AuthResponse> signin(String email, String password);

}
