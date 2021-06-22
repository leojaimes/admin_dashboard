// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registering_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisteringUserModel _$RegisteringUserModelFromJson(Map<String, dynamic> json) {
  return RegisteringUserModel(
    name: json['name'] as String,
    email: json['email'] as String,
    password: json['password'] as String?,
  );
}

Map<String, dynamic> _$RegisteringUserModelToJson(
        RegisteringUserModel instance) =>
    <String, dynamic>{
      'nombre': instance.name,
      'correo': instance.email,
      'password': instance.password,
    };
