// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterUserResponseModel _$RegisterUserResponseModelFromJson(
    Map<String, dynamic> json) {
  return RegisterUserResponseModel(
    user: UserModel.fromJson(json['usuario'] as Map<String, dynamic>),
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$RegisterUserResponseModelToJson(
        RegisterUserResponseModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
