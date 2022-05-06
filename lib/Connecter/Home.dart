// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
      ),
    );
  }
}
