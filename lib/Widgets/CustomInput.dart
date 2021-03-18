import 'package:flutter/material.dart';

// class CustomInput extends FormField<bool> {

// }
class CustomInput extends StatefulWidget {
  // CustomInput({Key key}) : super(key: key);
  final String text;
  final Function onsave;
  final Function validator;
  CustomInput({this.text, this.onsave, this.validator});
  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        fillColor: Colors.white,
        labelText: widget.text,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      onSaved: (String arg) {
        widget.onsave(arg);
      },
      validator: (String arg) {
        return widget.validator(arg);
      },
    );
  }
}
