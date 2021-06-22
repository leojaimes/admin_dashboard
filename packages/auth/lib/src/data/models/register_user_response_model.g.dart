// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterUserResponseModel _$RegisterUserResponseModelFromJson(
    Map<String, dynamic> json) {
  return RegisterUserResponseModel(
    json['token'] as String,
    UserModel.fromJson(json['usuario'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RegisterUserResponseModelToJson(
        RegisterUserResponseModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'usuario': instance.user,
    };
