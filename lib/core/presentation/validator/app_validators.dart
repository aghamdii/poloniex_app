class AppValidators {
  static bool validateEmail(String? value) {
    return validateNonEmptyField(value) &&
        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!);
  }

  static bool validateNonEmptyField(String? value) {
    return value != null && value.isNotEmpty;
  }

  static bool validatePassword(String? value) {
    return validateNonEmptyField(value) && value!.length > 3;
  }
}
