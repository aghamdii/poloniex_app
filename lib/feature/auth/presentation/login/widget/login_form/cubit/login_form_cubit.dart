import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/core/presentation/validator/app_validators.dart';

part 'login_form_state.dart';
part 'login_form_cubit.freezed.dart';

@inject
class LoginFormCubit extends Cubit<LoginFormState> {
  LoginFormCubit() : super(const LoginFormState());

  String? _email = '';
  String? _password = '';

  void changeEmail(String? email) {
    _email = email;
    _validate();
  }

  void changePassword(String? password) {
    _password = password;
    _validate();
  }

  void _validate() {
    if (_validationConditions()) {
      emit(
        state.copyWith(isFormValid: true),
      );
    } else {
      emit(
        state.copyWith(isFormValid: false),
      );
    }
  }

  bool _validationConditions() =>
      AppValidators.validateEmail(_email) &&
      AppValidators.validatePassword(_password);
}
