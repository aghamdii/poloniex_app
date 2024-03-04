part of 'login_page_cubit.dart';

@freezed
class LoginPageState with _$LoginPageState {
  const factory LoginPageState.initial() = _LoginPageStateInitial;

  const factory LoginPageState.loading() = _LoginPageStateLoading;

  const factory LoginPageState.success() = _LoginPageStateSuccess;

  const factory LoginPageState.error(String? errorMessage) =
      _LoginPageStateError;
}
