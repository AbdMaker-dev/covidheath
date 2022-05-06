import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String text;
  Function()? onPressed;
  MyButton({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: onPressed,
    );
  }
}
