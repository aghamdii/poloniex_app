import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/auth/domain/model/login_with_email_and_password_request.dart';
import 'package:poloniex_app/feature/auth/domain/use_case/login_with_email_and_password_use_case.dart';

part 'login_page_state.dart';
part 'login_page_cubit.freezed.dart';

@inject
class LoginPageCubit extends Cubit<LoginPageState> {
  LoginPageCubit(
    this._loginWithEmailAndPasswordUseCase,
  ) : super(const LoginPageState.initial());

  final LoginWithEmailAndPasswordUseCase _loginWithEmailAndPasswordUseCase;

  Future<void> loginTapped(LoginWithEmailAndPasswordRequest request) async {
    try {
      emit(const LoginPageState.loading());
      await Future.delayed(
        Duration(seconds: 3),
      );
      await _loginWithEmailAndPasswordUseCase(request);
      emit(const LoginPageState.success());
    } catch (e) {
      emit(LoginPageState.error(e.toString()));
    }
  }
}
