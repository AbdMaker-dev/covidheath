import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar(){
  return AppBar(
      backgroundColor: Colors.blueGrey,
      elevation: 0.0,
      title: const Text("Covid-Health"),
      actions: <Widget>[
        TextButton.icon(
          //onPressed: () => toggleView(),
          icon: const Icon(Icons.person, color: Colors.white),
          label: const Text(
            "Deconnecter",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ],
    );
}
