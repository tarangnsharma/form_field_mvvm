extension StringExtensions on String {
  /// Some people, when confronted with a problem, think "I know, I'll use regular expressions."
  /// Now They have two problems.

  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }

  bool isWhitespace() => trim().isEmpty;

  bool isValidDouble() => double.tryParse(this) != null;

  bool isValidInt() => int.tryParse(this) != null;
}
