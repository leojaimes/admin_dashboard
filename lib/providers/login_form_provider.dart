import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  String _email = '';
  String _password = '';

  get email => this._email;
  get password => this._password;

  void onChangeEmail(String email) {
    this._email = email;
  }

  void onChangePassword(String password) {
    this._password = password;
  }

  bool validateForm() {
    bool formValid = formKey.currentState!.validate();
    if (formValid == true) {
      print('--- $_email   +    $_password');
    }

    return formValid;
  }
}
