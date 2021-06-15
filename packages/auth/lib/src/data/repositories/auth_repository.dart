import 'package:errors/errors.dart';

import 'package:dartz/dartz.dart';
import 'package:network_manager/network_manager.dart';
import 'package:auth/src/domain/entities/auth_response.dart';
import 'package:auth/src/data/datasources/remote/i_remote_data_source.dart';
import '../../domain/domain.dart' show AuthResponse,  IAuthRepository  ;


 


/// Auth repository implementation
class AuthRepository implements IAuthRepository {
  /// Auth repository constructor
  AuthRepository({
    required networkManager,
    required remoteDataSource,
  })  : _networkManager = networkManager,
        _remoteDataSource = remoteDataSource;

  //

  final INetworkManager _networkManager;
  final IRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, AuthResponse>> signIn(
      String email, String password) async {
    if (await _networkManager.isConnected) {
      final authResponse = await _remoteDataSource.signin(email, password);
      return Right(authResponse);
    } else {
      return Left(ServerFailure());
    }
  }
}
