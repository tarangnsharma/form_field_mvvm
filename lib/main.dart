import 'package:flutter/material.dart';
import 'package:form_field_mvvm/components/email_field.dart';
import 'package:form_field_mvvm/components/password_field.dart';
import 'package:form_field_mvvm/components/number_field.dart';
import 'package:form_field_mvvm/components/disabled_field.dart';
import 'package:form_field_mvvm/components/multiline_field.dart';
import 'package:form_field_mvvm/components/text_field_row.dart';
import 'package:form_field_mvvm/my_input_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: MyInputTheme().theme(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Input Decoration Theme"),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(32),
            children: <Widget>[
              const EmailField(),
              const PasswordField(),
              const NumberField(),
              const DisabledField(),
              const MultilineField(),
              const TextFieldRow(),
            ]
                .map((child) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: child,
                    ))
                .toList(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final isValid = _formKey.currentState!.validate();
            debugPrint("Form is valid: $isValid");
          },
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}
