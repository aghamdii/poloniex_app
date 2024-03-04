import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/auth/domain/model/register_with_email_and_password_request.dart';
import 'package:poloniex_app/feature/auth/domain/use_case/register_with_email_and_password_use_case.dart';

part 'registration_page_state.dart';
part 'registration_page_cubit.freezed.dart';

@inject
class RegistrationPageCubit extends Cubit<RegistrationPageState> {
  RegistrationPageCubit(
    this._registerWithEmailAndPasswordUseCase,
  ) : super(RegistrationPageState.initial());

  final RegisterWithEmailAndPasswordUseCase
      _registerWithEmailAndPasswordUseCase;

  Future<void> registerTapped(
      RegisterWithEmailAndPasswordRequest request) async {
    try {
      emit(const RegistrationPageState.loading());
      await Future.delayed(
        Duration(seconds: 3),
      );
      await _registerWithEmailAndPasswordUseCase(request);
      emit(const RegistrationPageState.success());
    } catch (e) {
      emit(RegistrationPageState.error(e.toString()));
    }
  }
}
