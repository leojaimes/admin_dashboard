import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';
  bool _isValidForm = false;

  String get email => _email;
  String get password => _password;
  bool get isValidForm => _isValidForm;

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
