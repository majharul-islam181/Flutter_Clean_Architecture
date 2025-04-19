import 'package:flutter_clean_architecture/core/network/dio_client.dart';
import 'package:flutter_clean_architecture/features/auth/data/repository/auth.dart';
import 'package:flutter_clean_architecture/features/auth/data/sources/auth_api_service.dart';
import 'package:flutter_clean_architecture/features/auth/domain/repository/auth.dart';
import 'package:flutter_clean_architecture/features/auth/domain/usecases/signup_usecase.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  // Service
  sl.registerSingleton<AuthApiService>(
    AuthApiServiceIml()
  );
  // Repositories
  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );

  // Usecases
   sl.registerSingleton<SignupUsecase>(
    SignupUsecase()
  );

}
