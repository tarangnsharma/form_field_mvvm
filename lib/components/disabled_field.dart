import 'package:flutter/material.dart';

class DisabledField extends StatefulWidget {
  const DisabledField({Key? key}) : super(key: key);

  @override
  State<DisabledField> createState() => _DisabledFieldState();
}

class _DisabledFieldState extends State<DisabledField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // disabled field can still run a validator
      // validator: ,
      decoration: const InputDecoration(
        enabled: false,
        labelText: "Disabled field",
        //  An empty helperText makes it so the field does
        //   not grow in height when an error is displayed
        helperText: "",
        hintText: "Disabled",
      ),
    );
  }
}
