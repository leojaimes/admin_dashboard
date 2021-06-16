import 'package:auth/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'validate_token_state.dart';

part 'validate_token_state_notifier.dart';

/// Provider to use the ValidateTokenStateNotifier
final validateTokenNotifierProvider =
    StateNotifierProvider<ValidateTokenNotifier, ValidateTokenState>(
  (ref) => ValidateTokenNotifier(ref.watch(_validateTokenUseCaseProvider)),
);

/// Repositories Providers
final _authRepositoryProvider =
    Provider<IAuthRepository>((ref) => AuthRepository(
          localDataSource: SharedPreferencesDataSource(),
          remoteDataSource: DioRemoteDataSource(),
        ));

/// Use Cases Providers
final _validateTokenUseCaseProvider = Provider<ValidateAuth>(
    (ref) => ValidateAuth(repository: ref.watch(_authRepositoryProvider)));
