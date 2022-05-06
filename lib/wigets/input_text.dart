import 'package:flutter/material.dart';
import 'package:formulaire_flutter/common/customfield.dart';

class InputText extends StatelessWidget {
  String text;

  InputText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        //controller: numberController,
        decoration:
            textInputDecoration.copyWith(hintText: text),
        validator: (String? value) {
          return (value != null && value.length > 4)
              ? "Entrez votre mot de  passe"
              : null;
        });
  }
}
