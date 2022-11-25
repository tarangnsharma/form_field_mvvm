import 'package:flutter/material.dart';

class MultilineField extends StatefulWidget {
  const MultilineField({Key? key}) : super(key: key);

  @override
  State<MultilineField> createState() => MultilineFieldState();
}

class MultilineFieldState extends State<MultilineField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 5,
      decoration: InputDecoration(
        //  An empty helperText makes it so the field does
        //   not grow in height when an error is displayed
        helperText: "",
        hintText: "Multiline",
        label: Row(
          // Make sure this is min so it doesn't cut off
          // the top border completely
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.info_outline),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text("Labels can be a widget"),
            )
          ],
        ),
      ),
    );
  }
}
