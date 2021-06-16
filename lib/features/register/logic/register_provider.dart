import 'package:auth/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'register_state.dart';

part 'register_state_notifier.dart';

/// Provider to use the RegisterStateNotifier
final registerNotifierProvider = StateNotifierProvider(
  (ref) => RegisterNotifier(register: ref.watch(_registerProvider)),
);

final _authRepositoryProvider = Provider<IAuthRepository>(
    (ref) => AuthRepository(remoteDataSource: DioRemoteDataSource()));

final _registerProvider = Provider<Register>(
    (ref) => Register(repository: ref.watch(_authRepositoryProvider)));
