import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_market/features/Auth/presentation/manger/cubit/auth_cubit.dart';
import 'package:fruits_market/features/Auth/presentation/pages/login/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSucess) {
          print('Hello its success');
        }

        if (state is AuthFailure) {
          print('hello its failure');
        }

        if (state is AuthLoading) {
          print('hello its loading');
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: LoginViewBody(),
        );
      },
    );
  }
}
