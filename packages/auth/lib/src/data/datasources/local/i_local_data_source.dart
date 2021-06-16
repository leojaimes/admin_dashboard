// ignore_for_file: public_member_api_docs
import 'package:auth/src/data/models/user_model.dart';

abstract class ILocalDataSource {
  Future<String?> getId();
  Future<String?> saveId(String id);
  Future<String?> getToken();
  Future<String?> saveToken(String token);
  Future<void> clearAllData();
  Future<UserModel> saveUser(UserModel user);
  Future<UserModel> getUser();
}
