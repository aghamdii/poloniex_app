import 'package:flutter/material.dart';
import 'package:poloniex_app/core/presentation/style/app_colors.dart';

class PoloniexLoadingDialog extends StatelessWidget {
  const PoloniexLoadingDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 180,
        width: 280,
        padding: const EdgeInsets.all(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        child: Center(
          child: CircularProgressIndicator(
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}

showPoloniexLoadingDialog({
  required BuildContext context,
}) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => const PoloniexLoadingDialog(),
  );
}
