import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:poloniex_app/core/presentation/extensions/theme_extension.dart';
import 'package:poloniex_app/core/presentation/style/app_colors.dart';
import 'package:poloniex_app/core/presentation/widget/dialog/poloniex_info_dialog.dart';
import 'package:poloniex_app/core/presentation/widget/dialog/poloniex_loading_dialog.dart';
import 'package:poloniex_app/feature/auth/presentation/login/cubit/login_page_cubit.dart';

import 'package:poloniex_app/feature/auth/presentation/login/widget/login_form/login_form.dart';
import 'package:poloniex_app/feature/auth/presentation/login/widget/no_account_label.dart';
import 'package:poloniex_app/feature/auth/presentation/registration/registration_page.dart';
import 'package:poloniex_app/feature/trade/presentation/trade_highlight/trade_highlight_page.dart';

class LoginPage extends HookWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    final cubit = useBloc<LoginPageCubit>();

    useBlocListener<LoginPageCubit, LoginPageState>(
      cubit,
      (bloc, current, context) {
        current.whenOrNull(
          loading: () {
            showPoloniexLoadingDialog(context: context);
          },
          error: (errorMessage) {
            Navigator.pop(context);
            showPoloniexInfoDialog(
              context: context,
              title: 'Cannot login',
              description: 'Please check the email and password you entered.',
            );
          },
          success: () {
            Navigator.pop(context);
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => TradeHighlightPage(),
              ),
              (route) => false,
            );
          },
        );
      },
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              'Poloniex App',
              style: theme.textTheme.displaySmall!.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: LoginForm(
                onLoginTapped: (request) {
                  cubit.loginTapped(request);
                },
              ),
            ),
            const SizedBox(
              height: 18.0,
            ),
            NoAccountLabel(
              onRegisterTapped: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterationPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
