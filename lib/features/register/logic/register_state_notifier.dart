part of 'register_provider.dart';
// TODO: Implement Register StateNotifier

/// Defines all the Register logic the app will use
class RegisterNotifier extends StateNotifier<RegisterState> {
  /// Base constructor expects StateNotifier use_cases to 
  /// read its usecases and also defines inital state
  RegisterNotifier() : super(RegisterState.initial());
}