import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'register_state.dart';

part 'register_state_notifier.dart';

/// Provider to use the RegisterStateNotifier
final registerNotifierProvider = StateNotifierProvider(
  (ref) => RegisterNotifier(),
);

/// Repositories Providers
/// TODO: Create Repositories Providers

/// Use Cases Providers
/// TODO: Create Use Cases Providers