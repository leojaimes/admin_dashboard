import 'package:auth/src/data/models/user_model.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// ignore_for_file: public_member_api_docs

part 'register_user_response_model.g.dart';
@JsonSerializable()
class RegisterUserResponseModel extends Equatable {
  ///
  const RegisterUserResponseModel({required this.user, required this.token});

  factory RegisterUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterUserResponseModelToJson(this);

  final UserModel user;
  final String token;

  @override
  List<Object?> get props => [user, token];
}
