import 'package:equatable/equatable.dart';

///
class RegisteringUser extends Equatable {
  ///
  const RegisteringUser(
      {required this.name, required this.email, this.password});

  ///
  final String name;

  ///
  final String email;

  ///
  final String? password;

  @override
  List<Object?> get props => [name, email, password];
}
