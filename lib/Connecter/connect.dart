import 'package:flutter/material.dart';
import 'package:formulaire_flutter/Connecter/inscription.dart';
import 'package:formulaire_flutter/Connecter/connexion.dart';

class Connect extends StatefulWidget {
  const Connect({Key? key}) : super(key: key);

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  final _formKey = GlobalKey<FormState>();
  String error = '';
  Widget? _show = Center(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            "Welcome to Covid-Health",
            style: TextStyle(fontSize: 30.0),
            textAlign: TextAlign.center,
          )
        ]),
  );

  final numberController = TextEditingController();
  final passwordController = TextEditingController();
  bool showSignIn = true;

  @override
  void dispose() {
    numberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void toggleView() {
    setState(() {
      _formKey.currentState!.reset();
      error = '';
      numberController.text = '';
      passwordController.text = '';
      showSignIn = !showSignIn;
    });
  }

  void changePage() {
    if (showSignIn == false) {
      _show = const Inscription();
    } else {
      _show = const Connexion();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0.0,
          title: const Text("Covid-Health"),
          actions: <Widget>[
            TextButton.icon(
                onPressed: () => toggleView(),
                icon: const Icon(Icons.person, color: Colors.white),
                label: Text(
                  showSignIn ? "Connexion" : "Inscription",
                  style: const TextStyle(color: Colors.white),
                )),
          ],
        ),
        body: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
            child: Form(
                key: _formKey,
                onChanged: () => changePage(),
                child: Container(
                  child: _show,
                ))));
  }
}
