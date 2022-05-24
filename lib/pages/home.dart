import 'package:flutter/material.dart';
import 'package:formulaire_flutter/core/models/user.dart';
import 'package:formulaire_flutter/wigets/my_app_bar.dart';

class Home extends StatefulWidget {
  User user;
  Home({Key? key, required this.user}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pos = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: Center(
        child: GestureDetector(
          onTap: (() {
            Navigator.pop(context);
          }),
          child: Text(
            'Welcome to Covid-Health ${widget.user.prenom!} ${widget.user.nom!} ${15}',
            style: const TextStyle(fontSize: 15.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}