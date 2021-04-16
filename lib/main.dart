import 'package:flutter/material.dart';
import 'package:Wi9aya/src/view/Statistique.dart';
import 'package:Wi9aya/src/view/appScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: AppScreen()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Statistique(),
    );
  }
}
