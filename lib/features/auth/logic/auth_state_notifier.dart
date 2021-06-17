part of 'auth_provider.dart';

/// Defines all the Auth logic the app will use
class AuthNotifier extends StateNotifier<AuthState> {
  /// Base constructor expects StateNotifier use_cases to
  /// read its usecases and also defines inital state
  AuthNotifier({required SignIn signIn})
      : _signIn = signIn,
        super(const AuthState.initial());

  final SignIn _signIn;

  Future<void> signIn(String email, String password) async {
    state = const AuthState.loading();
    final result = await _signIn(email, password);
    result.fold((error) => state = AuthState.error(error.toString()),
        (authResponse) {
       
      return state = AuthState.data(authResponse: authResponse);
    });
  }
}
