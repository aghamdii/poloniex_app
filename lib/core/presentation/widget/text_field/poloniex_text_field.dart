import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:poloniex_app/core/presentation/extensions/theme_extension.dart';
import 'package:poloniex_app/core/presentation/style/app_colors.dart';

class PoloniexTextField extends HookWidget {
  const PoloniexTextField({
    this.label,
    this.hint,
    required this.controller,
    this.isPassword = false,
    this.validator,
    this.onChanged,
    super.key,
  });

  final String? label;
  final String? hint;
  final TextEditingController controller;
  final bool isPassword;
  final FormFieldValidator<String>? validator;
  final void Function(String? text)? onChanged;

  @override
  Widget build(BuildContext context) {
    final isFocused = useState<bool>(false);

    final theme = context.appTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: theme.textTheme.labelLarge,
          ),
          const SizedBox(
            height: 8.0,
          )
        ],
        Focus(
          onFocusChange: (value) {
            isFocused.value = value;
          },
          child: TextFormField(
            controller: controller,
            obscureText: isPassword,
            validator: isFocused.value ? validator : null,
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hint,
              filled: true,
              fillColor: Colors.white,
              focusColor: AppColors.primaryColor,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 2.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
