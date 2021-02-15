import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _Contact createState() => _Contact();
}

class _Contact extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Contact",
        textAlign: TextAlign.center,
      )),
    );
  }
}
