import 'package:auth/src/data/datasources/remote/i_remote_data_source.dart';
import 'package:auth/src/data/models/auth_response_model.dart';
import 'package:auth/src/data/models/registering_user_model.dart';

///
class DioRemoteDataSource implements IRemoteDataSource {
  //falta url
  @override
  Future<AuthResponseModel> signin(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    return AuthResponseModel.fromJson(
        {'id': '11', 'token': 'este es el token XX'});
  }

  @override
  Future<AuthResponseModel> register(RegisteringUserModel user) async {
    await Future.delayed(const Duration(seconds: 2));
    return AuthResponseModel.fromJson(
        {'id': 'new id', 'token': 'token de registro para ${user.name}'});
  }
}
