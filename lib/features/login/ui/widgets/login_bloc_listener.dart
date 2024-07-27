import 'package:advanced_flutter_app/core/helpers/app_loaders.dart';
import 'package:advanced_flutter_app/core/helpers/extension.dart';
import 'package:advanced_flutter_app/core/routing/routes.dart';
import 'package:advanced_flutter_app/core/theming/app_colors.dart';
import 'package:advanced_flutter_app/features/login/logic/login_cubit.dart';
import 'package:advanced_flutter_app/features/login/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Success || current is Error || current is Loading,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child:
                      CircularProgressIndicator(color: ColorsManager.mainBlue),
                );
              },
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            context.pop();
            AppLoaders.errorSnackBar(context, error);
            //setupErrorState(context, error);
          },
        );
      },
      child: Container(),
    );
  }

  // void setupErrorState(BuildContext context, String error) {
  //   context.pop();
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       icon: const Icon(
  //         Icons.error,
  //         color: Colors.red,
  //         size: 32,
  //       ),
  //       content: Text(error, style: TextStyles.font15DarkBlueMeduim),
  //       actions: [
  //         TextButton(
  //           onPressed: () => context.pop(),
  //           child: Text(
  //             'Got it',
  //             style: TextStyles.font14BlueSemiBold,
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
}
