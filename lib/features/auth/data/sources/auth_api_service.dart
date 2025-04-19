import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/constant/app_urls.dart';
import 'package:flutter_clean_architecture/core/network/dio_client.dart';
import 'package:flutter_clean_architecture/service_locator.dart';

import '../models/signup_req_params.dart';

abstract class AuthApiService {
  Future<Either> SignUp(SignupReqParams signupReq);
}

class AuthApiServiceIml extends AuthApiService {
  @override
  Future<Either> SignUp(SignupReqParams signupReq) async {
    try {
      var response = await sl<DioClient>().post(
        AppUrls.register,
        data: signupReq.toMap(),
      );

      return Right(response);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
