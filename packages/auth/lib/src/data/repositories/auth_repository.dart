 
import 'package:auth/src/domain/entities/registering_user.dart';
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
  }) : _remoteDataSource = remoteDataSource;

  //

  final IRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, AuthResponse>> signIn(
      String email, String password) async {
     
      try{
        final authResponse = await _remoteDataSource.signin(email, password);
        return Right(authResponse);
      }catch(error){
        return Left(ServerFailure());
      }
 
  }

  @override
  Future<Either<Failure, AuthResponse>> register(RegisteringUser user)  async{
      try{
        final authResponse = await _remoteDataSource.register(user);
        return Right(authResponse);
      }catch(error){
        return Left(ServerFailure());
      }
  }
}
