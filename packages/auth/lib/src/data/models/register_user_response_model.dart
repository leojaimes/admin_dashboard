import 'package:auth/src/data/models/user_model.dart';
import 'package:auth/src/domain/entities/register_user_response.dart';
import 'package:auth/src/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// ignore_for_file: public_member_api_docs

part 'register_user_response_model.g.dart';

@JsonSerializable()
class RegisterUserResponseModel implements RegisterUserResponse {
  RegisterUserResponseModel(this.token, this.user);

  factory RegisterUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterUserResponseModelToJson(this);

  @override
  final String token;

  @override
  final UserModel user;

  ///
  ///
  ///
  @override
  List<Object?> get props => [token, user];

  @override
  bool? get stringify => true;
}
