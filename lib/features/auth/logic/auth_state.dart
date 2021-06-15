import 'package:auth/auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

/// flutter pub run build_runner build --delete-conflicting-outputs
/// flutter pub run build_runner watch --delete-conflicting-outputs
@freezed
abstract class AuthState with _$AuthState {
  /// Data is present state
  const factory AuthState.data({required AuthResponse authResponse}) = _$Data;

  /// Initial/default state
  const factory AuthState.initial() = _$Initial;

  /// Data is loading state
  const factory AuthState.loading() = _$Loading;

  /// Error when loading data state
  const factory AuthState.error([String? message]) = _$Error;
}