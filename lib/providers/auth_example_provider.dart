import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthData {
  final String id;
  final String token;
  AuthData({required this.id, required this.token});
}

abstract class AuthRepository {
  Future<AuthData> login(String email, String password);
}

class FakeAuth implements AuthRepository {
  @override
  Future<AuthData> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 2));

    return AuthData(id: '1', token: 'fdfdfdsfsdfsdafsd');
  }
}

class NetworkException implements Exception {}

abstract class AuthDataState {
  const AuthDataState();
}

class AuthInitialState extends AuthDataState {
  const AuthInitialState();
}

class AuthLoading extends AuthDataState {
  const AuthLoading();
}

class AuthLoaded extends AuthDataState {
  final AuthData authData;
  const AuthLoaded(this.authData);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AuthLoaded && o.authData == authData;
  }

  @override
  int get hashCode => authData.hashCode;
}

class AuthError extends AuthDataState {
  final String message;
  const AuthError(this.message);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AuthError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

class AuthNotifier extends StateNotifier<AuthDataState> {
  final AuthRepository _authRepository;
 
  AuthNotifier(this._authRepository) : super(AuthInitialState());

 
  Future<void> login(String email, String password) async {
    try {
      state = AuthLoading();
      final AuthData authData = await _authRepository.login(email, password);
    
      state = AuthLoaded(authData);
    } on NetworkException {
      state = AuthError('Could login');
    }
  }
}

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => FakeAuth(),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthDataState>(
  (ref) => AuthNotifier(ref.watch(authRepositoryProvider)),
);


 
//https://resocoder.com/2020/12/11/flutter-statenotifier-riverpod-tutorial-immutable-state-management/
 

