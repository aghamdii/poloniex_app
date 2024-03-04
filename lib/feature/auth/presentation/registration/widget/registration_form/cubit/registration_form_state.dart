part of 'registration_form_cubit.dart';

@freezed
class RegistrationFormState with _$RegistrationFormState {
  const factory RegistrationFormState({
    @Default(false) bool isFormValid,
  }) = _RegistrationFormState;
}
