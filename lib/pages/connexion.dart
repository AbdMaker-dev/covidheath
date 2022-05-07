import 'package:flutter/material.dart';
import 'package:formulaire_flutter/pages/home.dart';
import 'package:formulaire_flutter/wigets/input_text.dart';
import 'package:formulaire_flutter/wigets/my_button.dart';

class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputText(
                text: "Numero de telephone",
              ),
              const SizedBox(
                height: 30,
              ),
              InputText(
                text: "Mot de passe",
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                  text: "Connecter",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home(
                                nom: "Diop",
                                prenom: "Ibou",
                              )),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
