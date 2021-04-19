import 'package:flutter/material.dart';

class PatingBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index){
        return Icon(
          Icons.info,
          color: Colors.white,
          size: 16,
        );

    }),
    );
  }
}