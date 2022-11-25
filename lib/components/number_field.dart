import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_mvvm/string_extensions.dart';

class NumberField extends StatefulWidget {
  const NumberField({Key? key}) : super(key: key);

  @override
  State<NumberField> createState() => NumberFieldState();
}

class NumberFieldState extends State<NumberField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: const TextInputType.numberWithOptions(
        decimal: true,
        signed: true,
      ),
      validator: (s) {
        if (s!.isValidDouble()) {
          return "Enter a valid floating point number";
        }
      },
      maxLength: 10,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      decoration: const InputDecoration(
        labelText: "Number field",
        //  An empty helperText makes it so the field does
        //   not grow in height when an error is displayed
        helperText: "",
        hintText: "74",
        //  Suffix widget only appears when field is populated
        //   This is a good place to put units
        suffix: Text("kg"),
      ),
    );
  }
}
