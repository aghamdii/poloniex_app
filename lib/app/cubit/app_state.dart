part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.loading() = _AppStateLoading;

  const factory AppState.success({
    @Default(null) UserSession? userSession,
  }) = _AppStateSuccess;

  const factory AppState.error() = _AppStateError;
}
