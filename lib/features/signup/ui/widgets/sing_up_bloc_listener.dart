import 'package:advanced_flutter_app/core/helpers/app_loaders.dart';
import 'package:advanced_flutter_app/core/helpers/extension.dart';
import 'package:advanced_flutter_app/core/routing/routes.dart';
import 'package:advanced_flutter_app/features/signup/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/signup_state.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            AppLoaders.loading(context);
          },
          success: (data) {
            context.pop();
            context.pushReplacementNamed(Routes.loginScreen);
            AppLoaders.successSnackBar(context, 'Congrtulation',
                'Account has been created successfly.');
          },
          error: (error) {
            context.pop();
            AppLoaders.errorSnackBar(
                context, error.apiErrorModel.message.toString());
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
