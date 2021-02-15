import 'package:flutter/material.dart';

class Informations extends StatefulWidget {
  @override
  _Informations createState() => _Informations();
}

class _Informations extends State<Informations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Informations",
        textAlign: TextAlign.center,
      )),
    );
  }
}
