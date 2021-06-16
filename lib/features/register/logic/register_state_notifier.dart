part of 'register_provider.dart';

/// Defines all the Register logic the app will use
class RegisterNotifier extends StateNotifier<RegisterState> {
  /// Base constructor expects StateNotifier use_cases to
  /// read its usecases and also defines inital state
  RegisterNotifier({required register})
      : _register = register,
        super(const RegisterState.initial());

  ///
  final Register _register;
  Future<void> registerUser(RegisteringUserModel user) async {
    state = const RegisterState.loading();
    final result = await _register(user);
    result.fold((error) => state = RegisterState.error(error.toString()),
        (data) => state = RegisterState.data(authResponse: data));
  }
}
