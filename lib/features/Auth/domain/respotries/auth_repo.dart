import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:fruits_market/features/Auth/domain/models/user_model.dart';

abstract class AuthRepo {
  Future<Either<Exception, UserModel>> loginWithGoogle();
 Future<Either<Exception, UserModel>> loginWithFacebook();
  Future<Either<Exception , UserModel>> completeInformation({@required String name , @required String phoneNumber , @required String address , @required UserModel user});
}
