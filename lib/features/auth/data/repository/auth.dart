import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/features/auth/data/models/signup_req_params.dart';
import 'package:flutter_clean_architecture/features/auth/data/sources/auth_api_service.dart';
import 'package:flutter_clean_architecture/features/auth/domain/repository/auth.dart';
import 'package:flutter_clean_architecture/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> SignUp(SignupReqParams signupReq) {
    return sl<AuthApiService>().SignUp(signupReq);
  }
}
