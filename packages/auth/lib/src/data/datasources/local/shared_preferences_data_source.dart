// ignore_for_file: public_member_api_docs

import 'package:auth/src/data/datasources/local/i_local_data_source.dart';
import 'package:auth/src/data/models/user_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

const _id = 'ID';
const _prefToken = 'TOKEN';
const _prefUsername = 'USERNAME';
const _prefName = 'NAME';
const _prefImage = 'IMAGE';

class SharedPreferencesDataSource implements ILocalDataSource {
  @override
  Future<void> clearAllData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
  }

  @override
  Future<String?> getToken() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(_prefToken);
  }

  @override
  Future<String?> saveToken(String token) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(_prefToken, token);
  }

  @override
  Future<UserModel> saveUser(UserModel user) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(_prefUsername, user.name!);
    await sharedPreferences.setString(_prefUsername, user.username!);
    await sharedPreferences.setString(_prefImage, user.image!);
    return user;
  }

  @override
  Future<UserModel> getUser() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final username = sharedPreferences.getString(_prefUsername);
    final name = sharedPreferences.getString(_prefName);
    final image = sharedPreferences.getString(_prefImage);
    return UserModel(image: image, username: username, name: name);
  }

  @override
  Future<String?> getId() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(_id);
  }

  @override
  Future<String?> saveId(String id) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(_id, id);
    return id;
  }
}
