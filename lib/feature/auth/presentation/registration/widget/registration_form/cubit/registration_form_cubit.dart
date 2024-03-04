import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/core/presentation/validator/app_validators.dart';

part 'registration_form_state.dart';
part 'registration_form_cubit.freezed.dart';

@inject
class RegistrationFormCubit extends Cubit<RegistrationFormState> {
  RegistrationFormCubit() : super(RegistrationFormState());

  String? _firstName = '';
  String? _lastName = '';
  String? _email = '';
  String? _password = '';

  void changeFirstName(String? firstName) {
    _firstName = firstName;
    _validate();
  }

  void changeLastName(String? lastName) {
    _lastName = lastName;
    _validate();
  }

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
      AppValidators.validatePassword(_password) &&
      AppValidators.validateNonEmptyField(_firstName) &&
      AppValidators.validateNonEmptyField(_lastName);
}
