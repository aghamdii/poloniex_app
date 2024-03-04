import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:poloniex_app/core/presentation/extensions/theme_extension.dart';
import 'package:poloniex_app/core/presentation/style/app_colors.dart';

class NoAccountLabel extends StatelessWidget {
  const NoAccountLabel({
    required this.onRegisterTapped,
    super.key,
  });

  final void Function() onRegisterTapped;

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return RichText(
      text: TextSpan(
        style: theme.textTheme.bodyMedium,
        children: [
          const TextSpan(
            text: "Don't have an account? ",
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onRegisterTapped,
            text: "Register now",
            style: theme.textTheme.bodyMedium!.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
