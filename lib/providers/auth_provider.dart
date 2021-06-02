import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthData {
  final String id;
  final String token;
  AuthData({required this.id, required this.token});
}

abstract class AuthRepository {
  Future<AuthData> login();
}

class FakeAuth implements AuthRepository {
  @override
  Future<AuthData> login() async {
    await Future.delayed(Duration(seconds: 2));

    return AuthData(id: '1', token: 'fdfdfdsfsdfsdafsd');
  }
}

final authRepository = Provider<AuthRepository>(
  (ref) => FakeAuth(),
);

final authDataProvider = FutureProvider<AuthData>((ref) async {
  return ref.watch(authRepository).login();
});
