import 'package:flutter/material.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  String _email = '';
  String _password = '';
  String _name = '';
  bool _isValidForm = false;

  String get email => _email;
  String get password => _password;
  String get name => _name;
  bool get isValidForm => _isValidForm;

  void onChangeName(String name) {
    _name = name;
    _validateForm();

  }

  void onChangeEmail(String email) {
    _email = email;
    _validateForm();
  }

  void onChangePassword(String password) {
    _password = password;
    _validateForm();
  }

  void _validateForm() {
    _isValidForm =
        formKey.currentState != null ? formKey.currentState!.validate() : false;

    notifyListeners();
  }
}
