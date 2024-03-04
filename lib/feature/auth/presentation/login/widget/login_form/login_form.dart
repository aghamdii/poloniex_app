import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:poloniex_app/core/presentation/validator/app_validators.dart';
import 'package:poloniex_app/core/presentation/widget/button/poloniex_button.dart';
import 'package:poloniex_app/core/presentation/widget/text_field/poloniex_text_field.dart';
import 'package:poloniex_app/feature/auth/domain/model/login_with_email_and_password_request.dart';
import 'package:poloniex_app/feature/auth/presentation/login/widget/login_form/cubit/login_form_cubit.dart';

class LoginForm extends HookWidget {
  const LoginForm({
    required this.onLoginTapped,
    super.key,
  });

  final void Function(LoginWithEmailAndPasswordRequest request) onLoginTapped;

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final cubit = useBloc<LoginFormCubit>();
    final state = useBlocBuilder(cubit);

    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          PoloniexTextField(
            controller: emailController,
            onChanged: (text) => cubit.changeEmail(text),
            label: 'Email',
            hint: 'Enter your email',
            validator: (value) =>
                AppValidators.validateEmail(emailController.text)
                    ? null
                    : 'Enter a valid email',
          ),
          const SizedBox(
            height: 24.0,
          ),
          PoloniexTextField(
            controller: passwordController,
            onChanged: (text) => cubit.changePassword(text),
            label: 'Password',
            hint: 'Enter your password',
            isPassword: true,
            validator: (value) =>
                AppValidators.validatePassword(passwordController.text)
                    ? null
                    : 'Enter a valid password',
          ),
          const SizedBox(
            height: 24.0,
          ),
          PoloniexButton(
            onPressed: () => onLoginTapped(
              LoginWithEmailAndPasswordRequest(
                email: emailController.text,
                password: passwordController.text,
              ),
            ),
            title: 'Login',
            isEnable: state.isFormValid,
          )
        ],
      ),
    );
  }
}
