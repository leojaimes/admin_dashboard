// ignore_for_file: public_member_api_docs
import 'package:auth/src/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

///dart run build_runner watch --delete-conflicting-outputs
@JsonSerializable()
class UserModel implements User {
  UserModel(
      {this.uid,
      this.name,
      this.username,
      this.image,
      this.email,
      this.role,
      this.state,
      this.google});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  final String? uid;

  @override
  final String? name;

  @override
  final String? username;

  @override
  final String? image;

  @override
  final String? email;

  @override
  final String? role;

  @override
  final bool? state;

  @override
  final bool? google;

  @override
  List<Object?> get props => [name, username, image, email];

  @override
  bool? get stringify => true;
}
