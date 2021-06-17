import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_token_state.freezed.dart';

/// flutter pub run build_runner watch --delete-conflicting-outputs
@freezed
abstract class ValidateTokenState with _$ValidateTokenState {
  /// Data is present state
  const factory ValidateTokenState.isValid(bool isValid) = _$Data;


 
  /// Initial/default state
  const factory ValidateTokenState.initial() = _$Initial;

  /// Data is loading state
  const factory ValidateTokenState.loading() = _$Loading;

  /// Error when loading data state
  const factory ValidateTokenState.error([String? message]) = _$Error;
}
