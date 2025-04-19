import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/usecase/usecase.dart';
import 'package:flutter_clean_architecture/features/auth/data/models/signup_req_params.dart';
import 'package:flutter_clean_architecture/features/auth/domain/repository/auth.dart';
import 'package:flutter_clean_architecture/service_locator.dart';

class SignupUsecase implements Usecase<Either, SignupReqParams> {
  @override
  Future<Either> call(SignupReqParams param) async {
    return sl<AuthRepository>().SignUp(param);
  }
}
