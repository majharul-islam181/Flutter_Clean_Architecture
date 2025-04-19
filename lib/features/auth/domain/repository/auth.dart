import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/features/auth/data/models/signup_req_params.dart';

abstract class AuthRepository {
  Future<Either> SignUp(SignupReqParams signupReq);

}
