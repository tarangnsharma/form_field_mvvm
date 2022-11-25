import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_mvvm/string_extensions.dart';

class EmailField extends StatefulWidget {
  const EmailField({Key? key}) : super(key: key);

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (s) {
        if (s!.isValidEmail()) {
          return "Enter a valid email";
        }
      },
      decoration: const InputDecoration(
        labelText: "Email field",
        //  An empty helperText makes it so the field does
        //   not grow in height when an error is displayed
        helperText: "",
        hintText: "email@test.com",
      ),
    );
  }
}
