part of 'login_form_cubit.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    @Default(false) bool isFormValid,
  }) = _LoginFormState;
}
