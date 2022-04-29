import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:fruits_market/features/Auth/domain/models/user_model.dart';

abstract class AuthRepo {
  Future<Either<Exception, UserCredential>> loginWithGoogle();
 Future<Either<Exception, UserCredential>> loginWithFacebook();
  Future<Either<Exception , UserModel>> completeInformation({@required String name , @required String phoneNumber , @required String address ,});
}
