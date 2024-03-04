import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:poloniex_app/core/presentation/widget/dialog/poloniex_info_dialog.dart';
import 'package:poloniex_app/core/presentation/widget/dialog/poloniex_loading_dialog.dart';
import 'package:poloniex_app/feature/auth/presentation/registration/cubit/registration_page_cubit.dart';
import 'package:poloniex_app/feature/auth/presentation/registration/widget/registration_form/registration_form.dart';
import 'package:poloniex_app/feature/trade/presentation/trade_highlight/trade_highlight_page.dart';

class RegisterationPage extends HookWidget {
  const RegisterationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<RegistrationPageCubit>();

    useBlocListener<RegistrationPageCubit, RegistrationPageState>(
      cubit,
      (bloc, current, context) {
        current.whenOrNull(
          loading: () => showPoloniexLoadingDialog(context: context),
          error: (errorMessage) {
            Navigator.pop(context);
            showPoloniexInfoDialog(
              context: context,
              title: 'Cannot register',
              description: 'Please contact the customers support.',
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
      appBar: AppBar(
        title: const Text(
          'Register',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 55,
              ),
              RegistrationForm(
                onRegisterTapped: (request) => cubit.registerTapped(request),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
