
import 'package:auth/auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

/// flutter pub run build_runner watch --delete-conflicting-outputs
@freezed
abstract class RegisterState with _$RegisterState {
  /// Data is present state
  const factory RegisterState.data({required AuthResponse authResponse}) =
      _$Data;

  /// Initial/default state
  const factory RegisterState.initial() = _$Initial;

  /// Data is loading state
  const factory RegisterState.loading() = _$Loading;

  /// Error when loading data state
  const factory RegisterState.error([String? message]) = _$Error;
}
