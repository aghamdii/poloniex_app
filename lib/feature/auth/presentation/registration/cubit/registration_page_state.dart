part of 'registration_page_cubit.dart';

@freezed
class RegistrationPageState with _$RegistrationPageState {
  const factory RegistrationPageState.initial() = _RegistrationPageStateInitial;

  const factory RegistrationPageState.loading() = _RegistrationPageStateLoading;

  const factory RegistrationPageState.success() = _RegistrationPageStateSuccess;

  const factory RegistrationPageState.error(String? errorMessage) =
      _RegistrationPageStateError;
}
