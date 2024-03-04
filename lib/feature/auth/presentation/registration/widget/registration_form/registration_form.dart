import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:poloniex_app/core/presentation/validator/app_validators.dart';
import 'package:poloniex_app/core/presentation/widget/button/poloniex_button.dart';
import 'package:poloniex_app/core/presentation/widget/text_field/poloniex_text_field.dart';
import 'package:poloniex_app/feature/auth/domain/model/register_with_email_and_password_request.dart';
import 'package:poloniex_app/feature/auth/presentation/registration/widget/registration_form/cubit/registration_form_cubit.dart';

class RegistrationForm extends HookWidget {
  const RegistrationForm({
    required this.onRegisterTapped,
    super.key,
  });

  final void Function(RegisterWithEmailAndPasswordRequest request)
      onRegisterTapped;

  @override
  Widget build(BuildContext context) {
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final cubit = useBloc<RegistrationFormCubit>();
    final state = useBlocBuilder(cubit);

    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          PoloniexTextField(
            controller: firstNameController,
            onChanged: (text) => cubit.changeFirstName(text),
            label: 'First Name',
            hint: 'Enter your first name',
            validator: (value) =>
                AppValidators.validateNonEmptyField(firstNameController.text)
                    ? null
                    : 'Enter a value',
          ),
          const SizedBox(
            height: 18.0,
          ),
          PoloniexTextField(
            controller: lastNameController,
            onChanged: (text) => cubit.changeLastName(text),
            label: 'Last Name',
            hint: 'Enter your last name',
            validator: (value) =>
                AppValidators.validateNonEmptyField(lastNameController.text)
                    ? null
                    : 'Enter a value',
          ),
          const SizedBox(
            height: 18.0,
          ),
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
            height: 18.0,
          ),
          PoloniexTextField(
            isPassword: true,
            controller: passwordController,
            onChanged: (text) => cubit.changePassword(text),
            label: 'Password',
            hint: 'Enter your password',
            validator: (value) =>
                AppValidators.validatePassword(passwordController.text)
                    ? null
                    : 'Enter a valid password',
          ),
          const SizedBox(
            height: 18.0,
          ),
          PoloniexButton(
            onPressed: () => onRegisterTapped(
              RegisterWithEmailAndPasswordRequest(
                firstName: firstNameController.text,
                lastName: lastNameController.text,
                email: emailController.text,
                password: passwordController.text,
              ),
            ),
            title: 'Register',
            isEnable: state.isFormValid,
          )
        ],
      ),
    );
  }
}
