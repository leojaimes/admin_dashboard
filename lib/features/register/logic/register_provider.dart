import 'package:auth/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

import 'register_state.dart';

part 'register_state_notifier.dart';

/// Provider to use the RegisterStateNotifier
final registerNotifierProvider =
    StateNotifierProvider<RegisterNotifier, RegisterState>(
  (ref) => RegisterNotifier(register: ref.watch(_registerProvider)),
);

final _authRepositoryProvider = Provider<IAuthRepository>((ref) =>
    AuthRepository(
        remoteDataSource: DioRemoteDataSource(url: 'http://localhost:8080/api', dio: Dio()),
        localDataSource: SharedPreferencesDataSource()));

final _registerProvider = Provider<Register>(
    (ref) => Register(repository: ref.watch(_authRepositoryProvider)));
