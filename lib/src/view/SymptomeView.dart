

import 'package:flutter/material.dart';
import 'package:Wi9aya/src/model/Symptome.dart';

class SymptomeView extends StatelessWidget {
  SymptomeView({
    this.symptome,
    Key key,
    }) : super(key: key);

  final Symptome symptome;

  description(context){
    showDialog(
      context: context,
      builder: (_)=>new AlertDialog(
         title: new Text(
           symptome.name,
           style: TextStyle(
             color: Colors.red,
           ),
          ),
         content: new Text(symptome.description),
         actions: <Widget>[
           FlatButton(
             child: Text("Close"),
             onPressed: (){
               Navigator.pop(context);
             },
           ),
         ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(symptome.name),
      onTap: ()=> description(context),
      trailing: Card(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: SizedBox(
                    height: 20,
                    width: 50,
                    child: Center(
                      child: Text(symptome.percentage),
                    ),
                  ),
                ),
       );
  }
}