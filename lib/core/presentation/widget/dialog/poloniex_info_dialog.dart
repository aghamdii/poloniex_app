import 'package:flutter/material.dart';
import 'package:poloniex_app/core/presentation/extensions/theme_extension.dart';
import 'package:poloniex_app/core/presentation/widget/button/poloniex_button.dart';

class PoloniexInfoDialog extends StatelessWidget {
  const PoloniexInfoDialog({
    required this.title,
    required this.description,
    super.key,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: theme.textTheme.labelLarge,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                description,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 18.0,
              ),
              PoloniexButton(
                title: 'OK',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

showPoloniexInfoDialog({
  required BuildContext context,
  required String title,
  required String description,
}) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => Center(
      child: PoloniexInfoDialog(
        title: title,
        description: description,
      ),
    ),
  );
}
