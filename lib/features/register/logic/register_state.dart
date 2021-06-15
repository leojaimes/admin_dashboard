import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

/// TODO: Run build_runner command to generate freezed code
@freezed
abstract class RegisterState with _$RegisterState {
  /// Data is present state
  const factory RegisterState() = _$Data;

  /// Initial/default state
  const factory RegisterState.initial() = _$Initial;

  /// Data is loading state
  const factory RegisterState.loading() = _$Loading;

  /// Error when loading data state
  const factory RegisterState.error([String? message]) = _$Error;
}