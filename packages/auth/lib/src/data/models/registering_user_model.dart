import 'package:auth/src/domain/entities/registering_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registering_user_model.g.dart';


@JsonSerializable()
class RegisteringUserModel implements RegisteringUser {
  ///
  RegisteringUserModel(
      {required this.name, required this.email, this.password});

///
  factory RegisteringUserModel.fromJson(Map<String, dynamic> json) =>
      _$RegisteringUserModelFromJson(json);
///
  Map<String, dynamic> toJson() => _$RegisteringUserModelToJson(this);

  ///
  @override
  final String name;

  ///
  @override
  final String email;

  @override
  final String? password;

  @override
  List<Object?> get props => [name, email, password];

  @override
  bool? get stringify => true;
}
