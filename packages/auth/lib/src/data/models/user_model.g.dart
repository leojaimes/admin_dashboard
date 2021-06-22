// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    uid: json['uid'] as String?,
    name: json['name'] as String?,
    username: json['username'] as String?,
    image: json['image'] as String?,
    email: json['email'] as String?,
    role: json['role'] as String?,
    state: json['state'] as bool?,
    google: json['google'] as bool?,
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'username': instance.username,
      'image': instance.image,
      'email': instance.email,
      'role': instance.role,
      'state': instance.state,
      'google': instance.google,
    };
