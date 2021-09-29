import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruits_market/features/Auth/domain/respotries/auth_repo.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepoImpl  extends AuthRepo 
{
  @override
  Future completeInformation({String? name, String? phoneNumber, String? address}) {
    
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() async {
   // Trigger the sign-in flow
  final LoginResult loginResult = await FacebookAuth.instance.login();

  // Create a credential from the access token
  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

  // Once signed in, return the UserCredential
  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  @override
  Future loginWithGoogle() async  {
  
   
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();


  final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;


  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  return await FirebaseAuth.instance.signInWithCredential(credential);
  }
  
}