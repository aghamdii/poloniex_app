import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:poloniex_app/app/cubit/app_cubit.dart';
import 'package:poloniex_app/core/presentation/style/app_theme.dart';
import 'package:poloniex_app/feature/auth/presentation/login/login_page.dart';
import 'package:poloniex_app/feature/splash/presentation/splash_page.dart';
import 'package:poloniex_app/feature/trade/presentation/trade_highlight/trade_highlight_page.dart';

class App extends HookWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<AppCubit>();
    final state = useBlocBuilder(cubit);

    useEffect(
      () {
        cubit.init();
        return null;
      },
      [cubit],
    );

    return MaterialApp(
      theme: AppTheme.theme,
      home: state.maybeWhen(
        success: (userSession) {
          if (userSession != null) {
            return TradeHighlightPage();
          } else {
            return LoginPage();
          }
        },
        loading: () => SplashPage(),
        orElse: () => SplashPage(),
      ),
    );
  }
}
