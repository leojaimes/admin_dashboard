import 'package:admin_dashboard/router/navigation_service.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:auth/auth.dart';
import 'package:dio/dio.dart';
import 'package:network_manager/network_manager.dart';
import 'auth_state.dart';

part 'auth_state_notifier.dart';

/// Provider to use the AuthStateNotifier
final signInNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(signIn: ref.watch(_signinProvider)),
);

/// Repositories Providers
/// repositoryProvider
final _authRepositoryProvider = Provider<IAuthRepository>((ref) =>
    AuthRepository(
        remoteDataSource: DioRemoteDataSource(),
        localDataSource: SharedPreferencesDataSource()));

/// Use Cases Providers
final _signinProvider = Provider<SignIn>(
    (ref) => SignIn(repository: ref.watch(_authRepositoryProvider)));
