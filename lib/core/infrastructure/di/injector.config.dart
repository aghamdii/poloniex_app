// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjecteoConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chopper/chopper.dart' as _i3;
import 'package:injecteo/injecteo.dart' as _i1;
import 'package:poloniex_app/app/cubit/app_cubit.dart' as _i27;
import 'package:poloniex_app/core/infrastructure/di/chopper_api_client.dart'
    as _i4;
import 'package:poloniex_app/core/infrastructure/di/local_storage_manager.dart'
    as _i12;
import 'package:poloniex_app/feature/auth/domain/repository/auth_repository.dart'
    as _i16;
import 'package:poloniex_app/feature/auth/domain/use_case/clear_user_session_use_case.dart'
    as _i18;
import 'package:poloniex_app/feature/auth/domain/use_case/get_user_session_use_case.dart'
    as _i20;
import 'package:poloniex_app/feature/auth/domain/use_case/login_with_email_and_password_use_case.dart'
    as _i21;
import 'package:poloniex_app/feature/auth/domain/use_case/register_with_email_and_password_use_case.dart'
    as _i22;
import 'package:poloniex_app/feature/auth/domain/use_case/update_user_session_use_case.dart'
    as _i26;
import 'package:poloniex_app/feature/auth/infrastructure/data_source/auth_local_data_source.dart'
    as _i15;
import 'package:poloniex_app/feature/auth/infrastructure/data_source/auth_mock_remote_data_source.dart'
    as _i2;
import 'package:poloniex_app/feature/auth/infrastructure/mapper/user_dto_mapper.dart'
    as _i14;
import 'package:poloniex_app/feature/auth/infrastructure/repository/auth_repository_impl.dart'
    as _i17;
import 'package:poloniex_app/feature/auth/presentation/login/cubit/login_page_cubit.dart'
    as _i30;
import 'package:poloniex_app/feature/auth/presentation/login/widget/login_form/cubit/login_form_cubit.dart'
    as _i8;
import 'package:poloniex_app/feature/auth/presentation/registration/cubit/registration_page_cubit.dart'
    as _i23;
import 'package:poloniex_app/feature/auth/presentation/registration/widget/registration_form/cubit/registration_form_cubit.dart'
    as _i11;
import 'package:poloniex_app/feature/trade/domain/repository/trade_repository.dart'
    as _i24;
import 'package:poloniex_app/feature/trade/domain/use_case/close_crypto_web_socket_use_case.dart'
    as _i19;
import 'package:poloniex_app/feature/trade/domain/use_case/get_crypto_price_stream_use_case.dart'
    as _i28;
import 'package:poloniex_app/feature/trade/domain/use_case/get_crypto_web_socket_token_use_case.dart'
    as _i29;
import 'package:poloniex_app/feature/trade/domain/use_case/open_crypto_web_socket_use_case.dart'
    as _i9;
import 'package:poloniex_app/feature/trade/domain/use_case/ping_crypto_web_socket_use_case.dart'
    as _i31;
import 'package:poloniex_app/feature/trade/infrastructure/crypto_web_socket_manager.dart'
    as _i6;
import 'package:poloniex_app/feature/trade/infrastructure/data_source/trade_remote_data_source.dart'
    as _i13;
import 'package:poloniex_app/feature/trade/infrastructure/mapper/crypto_price_point_response_dto_mapper.dart'
    as _i5;
import 'package:poloniex_app/feature/trade/infrastructure/mapper/crypto_web_socket_token_response_dto_mapper.dart'
    as _i7;
import 'package:poloniex_app/feature/trade/infrastructure/repository/trade_repository_impl.dart'
    as _i25;
import 'package:poloniex_app/feature/trade/presentation/trade_highlight/cubit/trade_highlight_cubit.dart'
    as _i32;
import 'package:poloniex_app/feature/trade/presentation/widget/price_indicator_form/cubit/price_indicator_form_cubit.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
///
/// configure registration of provided dependencies
void $injecteoConfig(
  _i1.ServiceLocator serviceLocator, {
  String? environment,
  _i1.EnvironmentFilter? environmentFilter,
}) {
  OtherInjectionModule().registerDependencies(
    serviceLocator,
    environment: environment,
    environmentFilter: environmentFilter,
  );
}

class OtherInjectionModule extends _i1.BaseInjectionModule {
  @override
  void registerDependencies(
    _i1.ServiceLocator serviceLocator, {
    String? environment,
    _i1.EnvironmentFilter? environmentFilter,
  }) {
    final serviceLocatorHelper = _i1.ServiceLocatorHelper(
      serviceLocator,
      environment,
      environmentFilter,
    );
    serviceLocatorHelper.registerFactory<_i2.AuthMockRemoteDataSource>(
        () => _i2.AuthMockRemoteDataSource());
    serviceLocatorHelper
        .registerFactory<_i3.ChopperClient>(() => _i4.ApiChopperClient());
    serviceLocatorHelper.registerFactory<_i5.CryptoPricePointDtoMapper>(
        () => _i5.CryptoPricePointDtoMapper());
    serviceLocatorHelper.registerFactory<_i5.CryptoPricePointResponseDtoMapper>(
        () => _i5.CryptoPricePointResponseDtoMapper(
            serviceLocator.get<_i5.CryptoPricePointDtoMapper>()));
    serviceLocatorHelper.registerLazySingleton<_i6.CryptoWebSocketManager>(
        () => _i6.CryptoWebSocketManager());
    serviceLocatorHelper
        .registerFactory<_i7.CryptoWebSocketTokenDataInstanceServerDtoMapper>(
            () => _i7.CryptoWebSocketTokenDataInstanceServerDtoMapper());
    serviceLocatorHelper
        .registerFactory<_i8.LoginFormCubit>(() => _i8.LoginFormCubit());
    serviceLocatorHelper.registerFactory<_i9.OpenCryptoWebSocketUseCase>(() =>
        _i9.OpenCryptoWebSocketUseCase(
            serviceLocator.get<_i6.CryptoWebSocketManager>()));
    serviceLocatorHelper.registerFactory<_i10.PriceIndicatorFormCubit>(
        () => _i10.PriceIndicatorFormCubit());
    serviceLocatorHelper.registerFactory<_i11.RegistrationFormCubit>(
        () => _i11.RegistrationFormCubit());
    serviceLocatorHelper.registerFactory<_i12.SecureLocalStorage>(
        () => _i12.SecureLocalStorage());
    serviceLocatorHelper.registerLazySingleton<_i13.TradeRemoteDataSource>(() =>
        _i13.TradeRemoteDataSource.create(
            serviceLocator.get<_i3.ChopperClient>()));
    serviceLocatorHelper
        .registerFactory<_i14.UserDtoMapper>(() => _i14.UserDtoMapper());
    serviceLocatorHelper.registerFactory<_i15.AuthLocalDataSource>(() =>
        _i15.AuthLocalDataSource(
            serviceLocator.get<_i12.SecureLocalStorage>()));
    serviceLocatorHelper.registerLazySingleton<_i16.AuthRepository>(
        () => _i17.AuthRepositoryImpl(
              serviceLocator.get<_i2.AuthMockRemoteDataSource>(),
              serviceLocator.get<_i15.AuthLocalDataSource>(),
              serviceLocator.get<_i14.UserDtoMapper>(),
            ));
    serviceLocatorHelper.registerFactory<_i18.ClearUserSessionUseCase>(() =>
        _i18.ClearUserSessionUseCase(
            serviceLocator.get<_i16.AuthRepository>()));
    serviceLocatorHelper.registerFactory<_i19.CloseCryptoWebSocketUseCase>(() =>
        _i19.CloseCryptoWebSocketUseCase(
            serviceLocator.get<_i6.CryptoWebSocketManager>()));
    serviceLocatorHelper.registerFactory<_i7.CryptoWebSocketTokenDataDtoMapper>(
        () => _i7.CryptoWebSocketTokenDataDtoMapper(serviceLocator
            .get<_i7.CryptoWebSocketTokenDataInstanceServerDtoMapper>()));
    serviceLocatorHelper
        .registerFactory<_i7.CryptoWebSocketTokenResponseDtoMapper>(() =>
            _i7.CryptoWebSocketTokenResponseDtoMapper(
                serviceLocator.get<_i7.CryptoWebSocketTokenDataDtoMapper>()));
    serviceLocatorHelper.registerFactory<_i20.GetUserSessionUseCase>(() =>
        _i20.GetUserSessionUseCase(serviceLocator.get<_i16.AuthRepository>()));
    serviceLocatorHelper.registerFactory<_i21.LoginWithEmailAndPasswordUseCase>(
        () => _i21.LoginWithEmailAndPasswordUseCase(
            serviceLocator.get<_i16.AuthRepository>()));
    serviceLocatorHelper
        .registerFactory<_i22.RegisterWithEmailAndPasswordUseCase>(() =>
            _i22.RegisterWithEmailAndPasswordUseCase(
                serviceLocator.get<_i16.AuthRepository>()));
    serviceLocatorHelper.registerFactory<_i23.RegistrationPageCubit>(() =>
        _i23.RegistrationPageCubit(
            serviceLocator.get<_i22.RegisterWithEmailAndPasswordUseCase>()));
    serviceLocatorHelper.registerLazySingleton<_i24.TradeRepository>(
        () => _i25.TradeRepositoryImpl(
              serviceLocator.get<_i6.CryptoWebSocketManager>(),
              serviceLocator.get<_i5.CryptoPricePointResponseDtoMapper>(),
              serviceLocator.get<_i7.CryptoWebSocketTokenResponseDtoMapper>(),
              serviceLocator.get<_i13.TradeRemoteDataSource>(),
            ));
    serviceLocatorHelper.registerFactory<_i26.UpdateUserSessionUseCase>(() =>
        _i26.UpdateUserSessionUseCase(
            serviceLocator.get<_i16.AuthRepository>()));
    serviceLocatorHelper.registerFactory<_i27.AppCubit>(
        () => _i27.AppCubit(serviceLocator.get<_i20.GetUserSessionUseCase>()));
    serviceLocatorHelper.registerFactory<_i28.GetCryptoPriceStreamUseCase>(() =>
        _i28.GetCryptoPriceStreamUseCase(
            serviceLocator.get<_i24.TradeRepository>()));
    serviceLocatorHelper.registerFactory<_i29.GetCryptoWebSocketTokenUseCase>(
        () => _i29.GetCryptoWebSocketTokenUseCase(
            serviceLocator.get<_i24.TradeRepository>()));
    serviceLocatorHelper.registerFactory<_i30.LoginPageCubit>(() =>
        _i30.LoginPageCubit(
            serviceLocator.get<_i21.LoginWithEmailAndPasswordUseCase>()));
    serviceLocatorHelper.registerFactory<_i31.PingCryptoWebSocketUseCase>(() =>
        _i31.PingCryptoWebSocketUseCase(
            serviceLocator.get<_i24.TradeRepository>()));
    serviceLocatorHelper.registerFactory<_i32.TradeHighlightCubit>(
        () => _i32.TradeHighlightCubit(
              serviceLocator.get<_i18.ClearUserSessionUseCase>(),
              serviceLocator.get<_i9.OpenCryptoWebSocketUseCase>(),
              serviceLocator.get<_i19.CloseCryptoWebSocketUseCase>(),
              serviceLocator.get<_i28.GetCryptoPriceStreamUseCase>(),
              serviceLocator.get<_i31.PingCryptoWebSocketUseCase>(),
              serviceLocator.get<_i29.GetCryptoWebSocketTokenUseCase>(),
            ));
  }
}
