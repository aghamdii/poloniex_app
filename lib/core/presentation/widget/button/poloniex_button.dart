import 'package:flutter/material.dart';
import 'package:poloniex_app/core/presentation/style/app_colors.dart';

class PoloniexButton extends StatelessWidget {
  const PoloniexButton({
    required this.title,
    required this.onPressed,
    this.isEnable = true,
    super.key,
  });

  final String title;
  final void Function() onPressed;
  final bool isEnable;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      disabledColor: Colors.grey,
      color: AppColors.primaryColor,
      onPressed: isEnable ? onPressed : null,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
