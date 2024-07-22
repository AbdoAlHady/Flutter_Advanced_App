import 'package:advanced_flutter_app/features/signup/data/models/sign_up_request_body.dart';
import 'package:advanced_flutter_app/features/signup/data/repo/sign_up_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._signUpRepo) : super(const SignupState.initial());

  final SignUpRepo _signUpRepo;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordConfirmationController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignUpStates() async {
    emit(const SignupState.loading());
    final response = await _signUpRepo.signup(SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        phone: phoneController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0));
    response.when(
      success: (signUpResponse) {
        emit(SignupState.success(signUpResponse));
      },
      failure: (errorHandler) {
        emit(SignupState.error(errorHandler));
      },
    );
  }
}
