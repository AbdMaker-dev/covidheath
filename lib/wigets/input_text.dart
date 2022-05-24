
import 'package:flutter/material.dart';
import 'package:formulaire_flutter/common/customfield.dart';

class InputText extends StatelessWidget {
  String text;
  dynamic validation;
  Function(String)? onChanged;

  InputText({Key? key, required this.text, this.validation, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        //controller: numberController,
        onChanged: onChanged,
        decoration: textInputDecoration.copyWith(hintText: text),
        validator: validation);
  }
}
