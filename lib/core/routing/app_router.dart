import 'package:advanced_flutter_app/core/di/dependancy_ingection.dart';
import 'package:advanced_flutter_app/core/routing/routes.dart';
import 'package:advanced_flutter_app/features/home/ui/home_screen.dart';
import 'package:advanced_flutter_app/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_flutter_app/features/login/ui/login_screen.dart';
import 'package:advanced_flutter_app/features/onbaording/onboarding_screen.dart';
import 'package:advanced_flutter_app/features/signup/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/signup/ui/sign_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final argument = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (context) =>  BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignUpScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text("No route defined for ${settings.name}"),
                  ),
                ));
    }
  }
}
