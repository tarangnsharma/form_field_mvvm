import 'package:flutter/material.dart';

class TextFieldRow extends StatefulWidget {
  const TextFieldRow({Key? key}) : super(key: key);

  @override
  State<TextFieldRow> createState() => TextFieldRowState();
}

class TextFieldRowState extends State<TextFieldRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextFormField(
          decoration: const InputDecoration(
            //  An empty helperText makes it so the field does
            //   not grow in height when an error is displayed
            helperText: "",
            hintText: "Row",
            labelText: "2 in a row",
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            //  An empty helperText makes it so the field does
            //   not grow in height when an error is displayed
            helperText: "",
            hintText: "Row",
            labelText: "2 in a row",
          ),
        ),
      ],
    );
  }
}
