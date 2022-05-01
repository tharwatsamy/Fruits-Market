part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthSucess extends AuthState {}

class AuthFailure extends AuthState {}

class AuthLoading extends AuthState {}
