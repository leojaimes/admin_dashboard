import 'package:auth/src/data/datasources/remote/i_remote_data_source.dart';
import 'package:auth/src/data/models/auth_response_model.dart';
import 'package:auth/src/data/models/registering_user_model.dart';
import 'package:auth/src/data/models/register_user_response_model.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart';

///
class DioRemoteDataSource implements IRemoteDataSource {
  ///
  DioRemoteDataSource({required url, required dio})
      : _url = url,
        _dio = dio;

  ///
  final String _url;

  ///
  final Dio _dio;

  //falta url
  @override
  Future<AuthResponseModel> signin(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    return AuthResponseModel.fromJson(
        {'id': '11', 'token': 'este es el token XX'});
  }

  /// [user]
  @override
  Future<RegisterUserResponseModel> register(RegisteringUserModel user) async {
    print(user.email);
    final formData = FormData.fromMap(user.toJson());

    final resp = await _dio.post('$_url/usuarios', data: formData);
    print('${resp.data['usuario']}');

    return RegisterUserResponseModel.fromJson(resp.data );
  }

  @override
  Future<bool> validateToken(String? token) async {
    await Future.delayed(const Duration(seconds: 2));
    return true;
  }
}
