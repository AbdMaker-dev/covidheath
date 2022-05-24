import 'package:flutter/material.dart';
import 'package:formulaire_flutter/core/models/user.dart';
import 'package:formulaire_flutter/pages/home.dart';
import 'package:formulaire_flutter/wigets/input_text.dart';
import 'package:formulaire_flutter/wigets/my_button.dart';

class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  final _formKey = GlobalKey<FormState>();
  String tel = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputText(
                text: "Numero de telephone",
                onChanged: (val) {
                  tel = val;
                },
                validation: (telephone) {
                  if (telephone.toString().isEmpty) {
                    return "\u26A0 Le Numero est aubligatoire";
                  }
                  if (telephone.toString().length < 9) {
                    return "\u26A0 Numero invalide";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              InputText(
                text: "Mot de passe",
                onChanged: (val) {
                  password = val;
                },
                validation: (passord) {
                  if (passord.toString().length < 8) {
                    return "\u26A0 min 8 caractere";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                  text: "Connecter",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      User user = new User(tel: tel, password: password);
                      var currentUser = user.login();
                      if (currentUser != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home(user: currentUser)),
                        );
                      }
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
