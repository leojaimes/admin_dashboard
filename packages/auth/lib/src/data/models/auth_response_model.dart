import 'package:auth/src/domain/entities/auth_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

///

part 'auth_response_model.g.dart';

@JsonSerializable()
// ignore: public_member_api_docs
class AuthResponseModel implements AuthResponse {
  ///
  AuthResponseModel({required this.id, required this.token});

  ///
  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
  ///
  Map<String, dynamic> toJson() => _$AuthResponseModelToJson(this);

  @override
  final String id;
  @override
  final String token;

  @override
  List<Object?> get props => [token, id];

  @override
  bool? get stringify => true;
}
