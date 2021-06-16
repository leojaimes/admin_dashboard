import 'package:auth/auth.dart';
import 'package:flutter/material.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';
  String _name = '';
  bool _isValidForm = false;
    RegisteringUserModel _registeringUserModel =
      RegisteringUserModel(email: '', password: '', name: '');

  String get email => _email;
  String get password => _password;
  String get name => _name;
  bool get isValidForm => _isValidForm;
  RegisteringUserModel get user => _registeringUserModel;

  void onChangeName(String name) {
    _name = name;
    _registeringUserModel.copyWith(name: name);
    
    _validateForm();
  }

  void onChangeEmail(String email) {
    _email = email;
    _registeringUserModel.copyWith(email: email);
    _validateForm();
  }

  void onChangePassword(String password) {
    _password = password;
    _registeringUserModel.copyWith(password: password);
    _validateForm();
  }

  void _validateForm() {
    _isValidForm =
        formKey.currentState != null ? formKey.currentState!.validate() : false;

    notifyListeners();
  }
}
