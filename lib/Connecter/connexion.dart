// ignore_for_file: unnecessary_null_comparison
import 'package:flutter/material.dart';
import 'package:formulaire_flutter/Connecter/Home.dart';
import 'package:formulaire_flutter/common/customfield.dart';

class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  String error = '';

  final numberController = TextEditingController();
  final passwordController = TextEditingController();

  String numb = 'Alpha';
  String password = "";

  bool navigateHome = true;

  void goHome() {
    if (navigateHome) {
      navigateHome = false;
    } else {
      navigateHome = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return navigateHome
        ? Scaffold(
            body: Column(
            children: [
              const SizedBox(height: 10.0),
              const SizedBox(height: 10.0),
              TextFormField(
                  controller: numberController,
                  decoration: textInputDecoration.copyWith(
                      hintText: 'Numero de Telephone'),
                  validator: (String? value) {
                    return (value != null && value.length > 4)
                        ? "Entrez votre mot de  passe"
                        : null;
                  }),
              const SizedBox(height: 10.0),
              TextFormField(
                  controller: passwordController,
                  decoration:
                      textInputDecoration.copyWith(hintText: 'Password'),
                  obscureText: true,
                  validator: (String? value) {
                    return (value != null && value.length > 4)
                        ? "Entrez votre mot de  passe"
                        : null;
                  }),
              const SizedBox(height: 10.0),
              ElevatedButton(
                child: const Text(
                  "Connect",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    numb = numberController.value.text;
                    password = passwordController.value.text;
                    var bool = password;
                    if (numb.length >= 9) {
                      if (bool.length > 8) {
                        goHome();
                      }
                    }
                  });
                },
              ),
              const SizedBox(height: 10.0),
              Text(error,
                  style: const TextStyle(color: Colors.red, fontSize: 15.0)),
            ],
          ))
        : const Home();
  }
}
