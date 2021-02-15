import 'package:flutter/material.dart';

class Statistique extends StatefulWidget {
  @override
  _Statistique createState() => _Statistique();
}

class _Statistique extends State<Statistique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Statistique",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
