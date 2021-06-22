// ignore_for_file: public_member_api_docs
import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User(
      {this.uid,
      this.name,
      this.username,
      this.image,
      this.email,
      this.role,
      this.state,
      this.google});

  final String? uid;

  final String? name;
  final String? username;
  final String? image;
  final String? email;
  final String? role;
  final bool? state;
  final bool? google;

  @override
  List<Object?> get props =>
      [uid, name, username, image, email, role, state, google];
}
