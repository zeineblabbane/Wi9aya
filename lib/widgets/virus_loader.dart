import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class VirusLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: HeartbeatProgressIndicator(
        child: SizedBox(
          height: 70.0,
          child: Image(
            image: AssetImage(
              'assets/loader.png',
            ),
            color: Colors.teal.shade900,
          ),
        ),
      ),
    );
  }
}
