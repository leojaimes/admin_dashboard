import 'package:flutter/material.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  String _email = '';
  String _password = '';
  String _name = '';

  String get email => this._email;
  String get password => this._password;
  String get name => this._name;

  void onChangeEmail(String email) {
    this._email = email;
  }

  void onChangePassword(String password) {
    this._password = password;
  }

  void onChangeName(String name) {
    this._name = name;
  }

  bool validateForm() {
    if (formKey.currentState!.validate()) {
      print('Form valid ... Login');
      print('$email === $password === $name');
      return true;
    } else {
      print('Form not valid');
      return false;
    }
  }
}
