part of 'validate_token_provider.dart';

/// Defines all the ValidateToken logic the app will use
class ValidateTokenNotifier extends StateNotifier<ValidateTokenState> {
  /// Base constructor expects StateNotifier use_cases to
  /// read its usecases and also defines inital state
  ValidateTokenNotifier(
    ValidateAuth validateAuth,
  )   : _validateAuth = validateAuth,
        super(const ValidateTokenState.initial());

  final ValidateAuth _validateAuth;
  bool _isValid = false;
  bool get isValid => _isValid;

  Future<void> validateAuthentication() async {
    state = const ValidateTokenState.loading();
    final result = await _validateAuth.call();

    result.fold((error) => state = ValidateTokenState.error(error.toString()),
        (isValid) {
      _isValid = isValid;
      state = ValidateTokenState.isValid(isValid);
    });
  }
}
