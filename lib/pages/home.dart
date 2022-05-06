import 'package:flutter/material.dart';
import 'package:formulaire_flutter/wigets/my_app_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: const Center(
        child: Text(
          "Welcome to Covid-Health",
          style: TextStyle(fontSize: 15.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
