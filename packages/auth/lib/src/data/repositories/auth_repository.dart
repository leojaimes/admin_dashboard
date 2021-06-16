import 'package:auth/src/data/datasources/local/i_local_data_source.dart';
import 'package:auth/src/data/models/registering_user_model.dart';

import 'package:errors/errors.dart';

import 'package:dartz/dartz.dart';
//import 'package:network_manager/network_manager.dart';
import 'package:auth/src/domain/entities/auth_response.dart';
import 'package:auth/src/data/datasources/remote/i_remote_data_source.dart';
import '../../domain/domain.dart' show AuthResponse, IAuthRepository;

/// Auth repository implementation
class AuthRepository implements IAuthRepository {
  /// Auth repository constructor
  AuthRepository({
    required remoteDataSource,
    required localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  //

  final IRemoteDataSource _remoteDataSource;
  final ILocalDataSource _localDataSource;
  @override
  Future<Either<Failure, AuthResponse>> signIn(
      String email, String password) async {
    try {
      final authResponse = await _remoteDataSource.signin(email, password);
      await _localDataSource.saveId(authResponse.id);
      await _localDataSource.saveToken(authResponse.token);

      return Right(authResponse);
    } catch (error) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, AuthResponse>> register(
      RegisteringUserModel user) async {
    try {
      final authResponse = await _remoteDataSource.register(user);
      await _localDataSource.saveId(authResponse.id);
      await _localDataSource.saveToken(authResponse.token);
      return Right(authResponse);
    } catch (error) {
      return Left(ServerFailure());
    }
  }
}
