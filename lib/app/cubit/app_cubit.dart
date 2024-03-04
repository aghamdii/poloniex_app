import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/auth/domain/model/user_session.dart';
import 'package:poloniex_app/feature/auth/domain/use_case/get_user_session_use_case.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

@inject
class AppCubit extends Cubit<AppState> {
  AppCubit(
    this._getUserSessionUseCase,
  ) : super(AppState.loading());

  final GetUserSessionUseCase _getUserSessionUseCase;

  Future<void> init() async {
    try {
      emit(AppState.loading());
      await Future.delayed(
        Duration(
          seconds: 3,
        ),
      );
      final userSession = await _getUserSessionUseCase();
      final sessionIsEmpty =
          userSession.accessToken.isEmpty || userSession.refreshToken.isEmpty;
      emit(
        AppState.success(
          userSession: sessionIsEmpty ? null : userSession,
        ),
      );
    } catch (e) {
      emit(AppState.error());
    }
  }
}
