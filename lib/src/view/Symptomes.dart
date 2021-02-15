import 'package:flutter/material.dart';

class Symptomes extends StatefulWidget {
  @override
  _Symptomes createState() => _Symptomes();
}

class _Symptomes extends State<Symptomes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Symptomes",
        textAlign: TextAlign.center,
      )),
    );
  }
}
