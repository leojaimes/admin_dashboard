// ignore_for_file: public_member_api_docs
import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({  this.name,   this.username,   this.image});

  final String? name;
  final String? username;
  final String?  image;

  @override
  List<Object?> get props => [name, username, image];
}
