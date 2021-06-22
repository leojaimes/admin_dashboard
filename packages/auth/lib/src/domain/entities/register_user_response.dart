import 'package:auth/src/domain/entities/user.dart';
import 'package:equatable/equatable.dart';
  // ignore_for_file: public_member_api_docs
///
class RegisterUserResponse extends Equatable {
  ///
  const RegisterUserResponse({required this.user, required this.token});


  final User user;
  final String token;

  @override
  List<Object?> get props => [user, token ];
}
