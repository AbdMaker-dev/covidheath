import 'package:flutter/material.dart';
import 'package:formulaire_flutter/pages/connexion.dart';
import 'package:formulaire_flutter/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Connexion(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  connect() {}
}
