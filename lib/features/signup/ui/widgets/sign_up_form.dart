import 'package:advanced_flutter_app/core/helpers/app_regex.dart';
import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/core/widgets/app_text_form_field.dart';
import 'package:advanced_flutter_app/core/widgets/password_validation.dart';
import 'package:advanced_flutter_app/features/signup/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late TextEditingController passwordController;
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    passwordController = context.read<SignupCubit>().passwordController;
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Name',
            controller: context.read<SignupCubit>().nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
            },
          ),
          verticalSpacing(16),
          AppTextFormField(
            hintText: 'Phone',
            controller: context.read<SignupCubit>().phoneController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter valid phone number';
              }
            },
          ),
          verticalSpacing(16),
          AppTextFormField(
            hintText: 'Email',
            controller: context.read<SignupCubit>().emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter valid email';
              }
            },
          ),
          verticalSpacing(16),
          AppTextFormField(
            hintText: 'Password',
            isObscureText: isPasswordObscureText,
            controller: context.read<SignupCubit>().passwordController,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: Icon(isPasswordObscureText
                  ? Icons.visibility_off
                  : Icons.visibility),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter valid password';
              }
            },
          ),
          verticalSpacing(16),
          AppTextFormField(
            hintText: 'Password Confirmation',
            isObscureText: isPasswordConfirmationObscureText,
            controller:
                context.read<SignupCubit>().passwordConfirmationController,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(isPasswordObscureText
                  ? Icons.visibility_off
                  : Icons.visibility),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter valid password';
              } else if (context
                      .read<SignupCubit>()
                      .passwordConfirmationController
                      .text !=
                  passwordController.text) {
                return 'Passwords are not same';
              }
            },
          ),
          verticalSpacing(16),
          PasswordValidations(
              hasLowerCase: hasLowercase,
              hasUpperCase: hasUppercase,
              hasSpecialCharacter: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength)
        ],
      ),
    );
  }
}
