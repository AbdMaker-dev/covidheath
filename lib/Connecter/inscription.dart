import 'package:flutter/material.dart';
import 'package:formulaire_flutter/common/customfield.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final _formKey = GlobalKey<FormState>();
  String error = '';

  final prenameController = TextEditingController();
  final nameController = TextEditingController();
  final adressController = TextEditingController();
  final numberController = TextEditingController();
  final passwordController = TextEditingController();

  bool showSignIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(height: 10.0),
        TextFormField(
            controller: prenameController,
            decoration: textInputDecoration.copyWith(hintText: 'Prenom'),
            validator: (String? value) {
              return (value != null && value.length > 4)
                  ? "Entrez votre Prenom"
                  : null;
            }),
        const SizedBox(height: 10.0),
        TextFormField(
            controller: nameController,
            decoration: textInputDecoration.copyWith(hintText: 'Nom'),
            validator: (String? value) {
              return (value != null && value.length > 4)
                  ? "Entrez votre Nom"
                  : null;
            }),
        const SizedBox(height: 10.0),
        TextFormField(
            controller: adressController,
            decoration: textInputDecoration.copyWith(hintText: 'Adresse'),
            validator: (String? value) {
              return (value != null && value.length > 4)
                  ? "Entrez votre Adresse mail"
                  : null;
            }),
        const SizedBox(height: 10.0),
        TextFormField(
            controller: numberController,
            decoration:
                textInputDecoration.copyWith(hintText: 'Numero de Telephone'),
            validator: (String? value) {
              return (value != null && value.length > 4)
                  ? "Entrez votre Numero de Telephone"
                  : null;
            }),
        const SizedBox(height: 10.0),
        TextFormField(
            controller: passwordController,
            decoration: textInputDecoration.copyWith(hintText: 'Password'),
            obscureText: true,
            validator: (String? value) {
              return (value != null && value.length > 4)
                  ? "Entrez votre mot de  passe"
                  : null;
            }),
        const SizedBox(height: 10.0),
        ElevatedButton(
          child: Text(
            showSignIn ? "Sign In" : "Inscription",
            style: const TextStyle(color: Colors.white),
          ),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              setState(() {});
            }
          },
        ),
        const SizedBox(height: 10.0),
        Text(error, style: const TextStyle(color: Colors.red, fontSize: 15.0))
      ],
    ));
  }
}
