import 'package:equatable/equatable.dart';

///
class AuthResponse extends Equatable {
  ///
  const AuthResponse({required this.token, required this.id});
  ///
  final String token;
  ///
  final String id;

  @override
  List<Object?> get props => [token, id ];
}
