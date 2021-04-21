import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  @override
  _Contact createState() => _Contact();
}


class _Contact extends State<Contact> {

  String a = "190";
  String b = "80101919";
  String c = "71341807";
  String d = "71783022";
  String e = "71578000";
  String f = "71713654";
  String g = "70860555";
  String h = "71236155";
  String i = "70860680";
  String j = "71822422";
  String k = "71267322";
  String l = "56156656";
  String m = "72425158";
  String n = "73102500";
  String o = "73908700";
  String p = "74242333";
  String q = "75650018";
  String r = "75275716";
  String s = "75692600";


  void _launchUrl(String url) async {
    if(await canLaunch(url)){
      await launch(url);
    }
    else { throw 'could not open url';  }
  }
  void _launchCaller(String url) async{

    if(await canLaunch(url)){
      await launch(url,);
    }
    else { throw 'could not launch call';}
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.green.shade100,
        appBar: AppBar(title: Text('contact d\'urgence',style: TextStyle(color: Colors.black,),),
          backgroundColor:  Color(0xFF00b09b),  centerTitle: true,),
        body: SingleChildScrollView(

          child: new Container(

            child: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Container(

                    margin: EdgeInsets.all(2.0),
                    width: 400,
                    height: 40.0,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color:  Color(0xFF00b09b),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular( 25.0),bottomLeft:Radius.circular( 25.0), ),

                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text('En cas d\'infection, appelez',style: TextStyle(fontFamily: 'Sacramento', fontSize: 20.0 )),
                      ],
                    ),
                  ),





                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Container(
                            width:300,
                            margin: EdgeInsets.all(1.0),
                            padding: new EdgeInsets.all(5.0),
                            child: new Row(
                                children: <Widget>[
                                  new Text('SAMU                          ',style: TextStyle(fontFamily: 'Parisienne', fontWeight: FontWeight.w500)),

                                  SizedBox(
                                      width: 100, // <-- Your width

                                      child:    RaisedButton(

                                          color: Colors.transparent,
                                          elevation: 5.0,
                                          shape: RoundedRectangleBorder(
                                            side:  BorderSide(color: Colors.black),
                                            borderRadius: new BorderRadius.circular(18.0),

                                          ),
                                          onPressed: (){
                                            _launchCaller("tel:$a");},
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.phone
                                              ),
                                              new Text('190', style: TextStyle(color: Colors.black)),
                                            ],
                                          )
                                      ))]
                            ),
                          ),

                          new Container(
                            width:300,
                            padding: new EdgeInsets.all(5.0),
                            child: new Row(
                              children: <Widget>[
                                Text(' numéro vert               ',style: TextStyle(fontFamily: 'Parisienne', fontWeight: FontWeight.bold),),

                                SizedBox(
                                    width: 150, // <-- Your width

                                    child:    RaisedButton(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          side:  BorderSide(color: Colors.black),
                                          borderRadius: new BorderRadius.circular(18.0),

                                        ),
                                        onPressed: (){
                                          _launchCaller("tel:$b");},
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.phone
                                              ),
                                              new Text('80101919', style: TextStyle(color: Colors.black)) ,
                                            ])
                                    )

                                )],
                            ),
                          ),


                          new Container(
                            width:300,

                            padding: new EdgeInsets.all(5.0),
                            child: new Row(
                              children: <Widget>[
                                new Column(  children: <Widget>[
                                  new Text('centre d\'aide      ',style: TextStyle(fontFamily: 'Parisienne', fontWeight: FontWeight.bold),),
                                  new Text(' medical d\'urgnce      ',style: TextStyle(fontFamily: 'Parisienne', fontWeight: FontWeight.bold),),
                                ]
                                ),


                                SizedBox(
                                    width: 150,


                                    child:   RaisedButton(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          side:  BorderSide(color: Colors.black),
                                          borderRadius: new BorderRadius.circular(18.0),

                                        ),
                                        onPressed: (){
                                          _launchCaller("tel:$c");
                                        },
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.phone
                                              ),
                                              new Text('71341807', style: TextStyle(color: Colors.black)),
                                            ])
                                    )

                                )],
                            ),
                          ),
                        ]
                    ),

                  ),

                  new Container(
                    margin: EdgeInsets.all(2.0),
                    width: 400,
                    height: 40.0,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(

                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [

                            Color(0xFF00b09b),
                            Color(0xFF96c93d),

                          ],
                      ),

                      borderRadius: BorderRadius.circular(25.0), ),


                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text('Laboratoires pour les tests pcr/rt',style: TextStyle(fontFamily: 'Sacramento', fontSize: 20.0 )),
                      ],
                    ),
                  ),

                  new Row(
                      children: <Widget>[
                        new Text('          '),
                        new Container(
                          decoration: BoxDecoration(
                            color:  Colors.black,
                            borderRadius: BorderRadius.only(topRight: Radius.circular( 25.0),topLeft:Radius.circular( 25.0), ),

                          ),
                          width: 60,
                          height: 20,
                          child:  new Text('Tunis',style:TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.w400,color: Colors.lightGreen,fontSize: 20.0),),
                        ),
                      ]),
                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          width:300,
                          margin: EdgeInsets.all(1.0),
                          padding: new EdgeInsets.all(5.0),
                          child: new Column(
                            children: <Widget>[
                              new Text('Institut Pasteur de Tunis',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold),
                              ),
                              RaisedButton( child:  Icon(Icons.location_on_outlined),
                                  shape: CircleBorder(),
                                  onPressed: () { _launchUrl("https://www.google.com/maps/place/%D9%85%D8%B9%D9%87%D8%AF+%D8%A8%D8%A7%D8%B3%D8%AA%D9%88%D8%B1+%D8%A8%D8%AA%D9%88%D9%86%D8%B3%E2%80%AD/@36.823725,10.1805144,17z/data=!4m6!3m5!1s0x12fd3485d1a37e79:0xd742845b5ac72989!4b1!8m2!3d36.8232054!4d10.1789051");
                                  }),

                              SizedBox(
                                  width: 150, // <-- Your width

                                  child:    RaisedButton(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side:  BorderSide(color: Colors.black),
                                        borderRadius: new BorderRadius.circular(18.0),

                                      ),
                                      onPressed: (){
                                        _launchCaller("tel:$d");},
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.phone
                                            ),
                                            new Text('71783022', style: TextStyle(color: Colors.black)) ,
                                          ])
                                  )

                              ),

                              RaisedButton(
                                onPressed: () { _launchUrl("http://rdvanalyses.pasteur.tn/covid-19");
                                },
                                child: new Text('vous pouvez prendre un rendez-vous sur le site'),
                                color: Colors.transparent,

                                elevation: 2.0,
                                shape: RoundedRectangleBorder(

                                  borderRadius: new BorderRadius.circular(18.0),
                                ),
                              )],
                          ),



                        ),
                      ],),
                  ),
                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          width:300,
                          margin: EdgeInsets.all(1.0),
                          padding: new EdgeInsets.all(5.0),
                          child: new Column(
                            children: <Widget>[
                              new Text('hopital charles nicolle',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold),
                              ),

                              RaisedButton(
                                  child:  Icon(Icons.location_on_outlined),    shape: CircleBorder(),

                                  onPressed: () {
                                    _launchUrl("https://www.google.tn/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%B4%D8%A7%D8%B1%D9%84+%D9%86%D9%8A%D9%83%D9%88%D9%84%E2%80%AD/@36.8022517,10.1634107,17z/data=!3m1!4b1!4m5!3m4!1s0x12fd338dd80176d9:0x5297dd538ad1cc65!8m2!3d36.8022474!4d10.161222");
                                  }

                              ),

                              SizedBox(
                                  width: 150, // <-- Your width

                                  child:    RaisedButton(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side:  BorderSide(color: Colors.black),
                                        borderRadius: new BorderRadius.circular(18.0),

                                      ),
                                      onPressed: (){
                                        _launchCaller("tel:$e");},
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.phone
                                            ),
                                            new Text('71578000', style: TextStyle(color: Colors.black)) ,
                                          ])
                                  )

                              ),

                            ],
                          ),



                        ),
                      ],),
                  ),

                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          width:300,
                          margin: EdgeInsets.all(1.0),
                          padding: new EdgeInsets.all(5.0),
                          child: new Column(
                            children: <Widget>[
                              new Text('Hopital abderrahmen Mami de pneumophtisiologie',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold),
                              ),

                              RaisedButton(
                                  child:  Icon(Icons.location_on_outlined),    shape: CircleBorder(),

                                  onPressed: () {
                                    _launchUrl("https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%B9%D8%A8%D8%AF+%D8%A7%D9%84%D8%B1%D8%AD%D9%85%D8%A7%D9%86+%D9%85%D8%A7%D9%85%D9%8A+%D9%84%D9%84%D8%A3%D9%85%D8%B1%D8%A7%D8%B6+%D8%A7%D9%84%D8%B5%D8%AF%D8%B1%D9%8A%D8%A9%E2%80%AD/@36.8698065,10.1804316,17z/data=!3m1!4b1!4m5!3m4!1s0x12e2cb5088d3a49f:0x253cf541eb3056ae!8m2!3d36.8698022!4d10.1782429");
                                  }

                              ),
                              SizedBox(
                                  width: 150, // <-- Your width

                                  child:    RaisedButton(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side:  BorderSide(color: Colors.black),
                                        borderRadius: new BorderRadius.circular(18.0),

                                      ),
                                      onPressed: (){
                                        _launchCaller("tel:$f");},
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.phone
                                            ),
                                            new Text('71713654', style: TextStyle(color: Colors.black)) ,
                                          ])
                                  )

                              ),

                            ],
                          ),



                        ),
                      ],),
                  ),
                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                            width:300,
                            margin: EdgeInsets.all(1.0),
                            padding: new EdgeInsets.all(5.0),
                            child: new Column(
                                children: <Widget>[
                                  new Text('laboratoire houda hmida ridane',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold),
                                  ),

                                  RaisedButton(
                                      child:  Icon(Icons.location_on_outlined),                  shape: CircleBorder(),

                                      onPressed: () {
                                        _launchUrl("https://www.google.com/maps/place/%D9%85%D8%AE%D8%A8%D8%B1+%D8%A7%D9%84%D8%AA%D8%AD%D8%A7%D9%84%D9%8A%D9%84+%D8%A7%D9%84%D8%B7%D8%A8%D9%8A%D8%A9+%D9%87%D8%AF%D9%89+%D8%AD%D9%85%D9%8A%D8%AF%D8%A9+%D8%B1%D9%8A%D8%AF%D8%A7%D9%86%E2%80%AD/@36.8425057,10.1614668,17z/data=!3m1!4b1!4m5!3m4!1s0x12fd33b3040cdc1b:0x96b6a290dc4aaddb!8m2!3d36.8425014!4d10.1592781");
                                      }

                                  ),
                                  SizedBox(
                                      width: 150, // <-- Your width

                                      child:    RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 5.0,
                                          shape: RoundedRectangleBorder(
                                            side:  BorderSide(color: Colors.black),
                                            borderRadius: new BorderRadius.circular(18.0),

                                          ),
                                          onPressed: (){
                                            _launchCaller("tel:$g");},
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(Icons.phone
                                                ),
                                                new Text('70860555', style: TextStyle(color: Colors.black)) ,
                                              ])
                                      )

                                  ),






                                ])),
                      ],),
                  ),
                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          width:300,
                          margin: EdgeInsets.all(1.0),
                          padding: new EdgeInsets.all(5.0),
                          child: new Column(
                            children: <Widget>[
                              new Text(' Laboratoire d\'Analyses Médicales Mohamed Nejib Barouni',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold)
                              ),

                              RaisedButton(
                                  child:  Icon(Icons.location_on_outlined),                 shape: CircleBorder(),

                                  onPressed: () {
                                    _launchUrl("https://www.google.com/maps/place/%D9%85%D8%AE%D8%A8%D8%B1+%D8%A7%D9%84%D8%AA%D8%AD%D8%A7%D9%84%D9%8A%D9%84+%D8%A7%D9%84%D8%B7%D8%A8%D9%8A%D8%A9+%D9%85%D8%AD%D9%85%D8%AF+%D9%86%D8%AC%D9%8A%D8%A8+%D8%A8%D8%A7%D8%B1%D9%88%D9%86%D9%8A%E2%80%AD/@36.8478819,10.1695892,17z/data=!3m1!4b1!4m5!3m4!1s0x12fd3359ab1071a5:0xd32c9fbc95c687e4!8m2!3d36.8478776!4d10.1674005");
                                  }

                              ),
                              SizedBox(
                                  width: 150, // <-- Your width

                                  child:    RaisedButton(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side:  BorderSide(color: Colors.black),
                                        borderRadius: new BorderRadius.circular(18.0),

                                      ),
                                      onPressed: (){
                                        _launchCaller("tel:$h");},
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.phone
                                            ),
                                            new Text('71236155', style: TextStyle(color: Colors.black)) ,
                                          ])
                                  )

                              ),




                            ],
                          ),



                        ),
                      ],),
                  ),
                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          width:300,
                          margin: EdgeInsets.all(1.0),
                          padding: new EdgeInsets.all(5.0),
                          child: new Column(
                            children: <Widget>[
                              new Text('Laboratoire d\'Analyses Médicales Senda Jeribi Masmoudi ',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold)
                              ),

                              RaisedButton(
                                  child:  Icon(Icons.location_on_outlined),
                                  shape: CircleBorder(),
                                  onPressed: () {
                                    _launchUrl("https://www.google.com/maps/place/%D9%85%D8%AE%D8%A8%D8%B1+%D8%A7%D9%84%D8%AA%D8%AD%D8%A7%D9%84%D9%8A%D9%84+%D8%A7%D9%84%D8%B7%D8%A8%D9%8A%D8%A9+%D8%B3%D9%86%D8%AF%D8%A9+%D8%AC%D8%B1%D9%8A%D8%A8%D9%8A+%D9%85%D8%B5%D9%85%D9%88%D8%AF%D9%8A%E2%80%AD/@36.8424892,10.1675926,17z/data=!3m1!4b1!4m5!3m4!1s0x12fd335e7d53daf1:0x5af26d443cae6e6c!8m2!3d36.8424849!4d10.1654039");
                                  }

                              ),
                              SizedBox(
                                  width: 150, // <-- Your width

                                  child:    RaisedButton(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side:  BorderSide(color: Colors.black),
                                        borderRadius: new BorderRadius.circular(18.0),

                                      ),
                                      onPressed: (){
                                        _launchCaller("tel:$i");},
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.phone
                                            ),
                                            new Text('70860680', style: TextStyle(color: Colors.black)) ,
                                          ])
                                  )

                              ),




                            ],
                          ),



                        ),
                      ],),
                  ),
                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          width:300,
                          margin: EdgeInsets.all(1.0),
                          padding: new EdgeInsets.all(5.0),
                          child: new Column(
                            children: <Widget>[
                              new Text('Laboratoire d\'Analyses Médicales Hatem Bahri',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold)
                              ),

                              RaisedButton(
                                  child:  Icon(Icons.location_on_outlined),
                                  shape: CircleBorder(), onPressed: () {
                                _launchUrl("https://www.google.com/maps/place/%D9%85%D8%AE%D8%A8%D8%B1+%D8%A7%D9%84%D8%AA%D8%AD%D8%A7%D9%84%D9%8A%D9%84+%D8%A7%D9%84%D8%B7%D8%A8%D9%8A%D8%A9+%D8%AD%D8%A7%D8%AA%D9%85+%D8%A7%D9%84%D8%A8%D8%AD%D8%B1%D9%8A%E2%80%AD/@36.7921259,10.1776401,17z/data=!3m1!4b1!4m5!3m4!1s0x12fd3516e3f27c2d:0x1b072278e3795c11!8m2!3d36.7921216!4d10.1754514");
                              }

                              ),
                              SizedBox(
                                  width: 150, // <-- Your width

                                  child:    RaisedButton(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side:  BorderSide(color: Colors.black),
                                        borderRadius: new BorderRadius.circular(18.0),

                                      ),
                                      onPressed: (){
                                        _launchCaller("tel:$j");},
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.phone
                                            ),
                                            new Text('71822422', style: TextStyle(color: Colors.black)) ,
                                          ])
                                  )

                              ),




                            ],
                          ),



                        ),
                      ],),
                  ),

                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          width:300,
                          margin: EdgeInsets.all(1.0),
                          padding: new EdgeInsets.all(5.0),
                          child: new Column(
                            children: <Widget>[
                              new Text('Laboratoire d\'Analyses Médicales Fatam Elloumi',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold)
                              ),

                              RaisedButton(
                                  child:  Icon(Icons.location_on_outlined),
                                  shape: CircleBorder(), onPressed: () {
                                _launchUrl("https://www.google.com/maps/place/%D9%85%D8%AE%D8%A8%D8%B1+%D8%A7%D9%84%D8%AA%D8%AD%D8%A7%D9%84%D9%8A%D9%84+%D8%A7%D9%84%D8%B7%D8%A8%D9%8A%D8%A9+%D9%81%D8%A7%D8%B7%D9%85%D8%A9+%D8%A7%D9%84%D9%84%D9%88%D9%85%D9%8A+%D8%B4%D9%8A%D8%AE+%D8%B1%D9%88%D8%AD%D9%88%E2%80%AD/@36.8491199,10.1991307,17z/data=!3m1!4b1!4m5!3m4!1s0x12fd34cf4fa90b2d:0x9173ddc0520153b3!8m2!3d36.8491156!4d10.196942");
                              }

                              ),
                              SizedBox(
                                  width: 150, // <-- Your width

                                  child:    RaisedButton(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side:  BorderSide(color: Colors.black),
                                        borderRadius: new BorderRadius.circular(18.0),

                                      ),
                                      onPressed: (){
                                        _launchCaller("tel:$k");},
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.phone
                                            ),
                                            new Text('71267322', style: TextStyle(color: Colors.black)) ,
                                          ])
                                  )

                              ),




                            ],
                          ),



                        ),
                      ],),
                  ),
                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          width:300,
                          margin: EdgeInsets.all(1.0),
                          padding: new EdgeInsets.all(5.0),
                          child: new Column(
                            children: <Widget>[
                              new Text('Laboratoire d\'Analyses Médicales Messai Farah',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold)
                              ),

                              RaisedButton(
                                  child:  Icon(Icons.location_on_outlined),
                                  shape: CircleBorder(), onPressed: () {
                                _launchUrl("https://www.google.com/maps/place/%D9%85%D8%AE%D8%A8%D8%B1+%D8%A7%D9%84%D8%AA%D8%AD%D8%A7%D9%84%D9%8A%D9%84+%D8%A7%D9%84%D8%B7%D8%A8%D9%8A%D8%A9+%D9%81%D8%B1%D8%AD+%D9%85%D8%B3%D8%B9%D9%8A+%D9%85%D8%AD%D8%AC%D9%88%D8%A8%E2%80%AD/@36.8453775,10.2866306,17z/data=!3m1!4b1!4m5!3m4!1s0x12fd4b8caefc1597:0x24262ec19d8eaa6a!8m2!3d36.8453732!4d10.2844419");
                              }

                              ),
                              SizedBox(
                                  width: 150, // <-- Your width

                                  child:    RaisedButton(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side:  BorderSide(color: Colors.black),
                                        borderRadius: new BorderRadius.circular(18.0),

                                      ),
                                      onPressed: (){
                                        _launchCaller("tel:$k");},
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.phone
                                            ),
                                            new Text('71267322', style: TextStyle(color: Colors.black)) ,
                                          ])
                                  )

                              ),




                            ],
                          ),



                        ),
                      ],),
                  ),
                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Container(
                            width:300,
                            margin: EdgeInsets.all(1.0),
                            padding: new EdgeInsets.all(5.0),
                            child: new Column(
                              children: <Widget>[
                                new Text('Laboratoire d\'Analyses Médicales Rafiaa Ghozzi',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold)
                                ),

                                RaisedButton(
                                    child:  Icon(Icons.location_on_outlined),
                                    shape: CircleBorder(), onPressed: () {
                                  _launchUrl("https://www.google.com/maps/place/%D9%85%D8%AE%D8%A8%D8%B1+%D8%A7%D9%84%D8%AA%D8%AD%D8%A7%D9%84%D9%8A%D9%84+%D8%A7%D9%84%D8%B7%D8%A8%D9%8A%D8%A9+%D8%B1%D9%81%D9%8A%D8%B9%D8%A9+%D8%BA%D8%B2%D9%8A%E2%80%AD/@36.7430265,10.3072974,17z/data=!3m1!4b1!4m5!3m4!1s0x12fd49755310b001:0xf94061141380403a!8m2!3d36.7430222!4d10.3051087");
                                }

                                ),
                                SizedBox(
                                    width: 150, // <-- Your width

                                    child:    RaisedButton(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          side:  BorderSide(color: Colors.black),
                                          borderRadius: new BorderRadius.circular(18.0),

                                        ),
                                        onPressed: (){
                                          _launchCaller("tel:$l");},
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.phone
                                              ),
                                              new Text('56156656', style: TextStyle(color: Colors.black)) ,
                                            ])
                                    )

                                )],
                            ),
                          ),
                        ]
                    ),

                  ),
                  new Row(
                      children: <Widget>[
                        new Text('          '),
                        new Container(
                          decoration: BoxDecoration(
                            color:  Colors.black,
                            borderRadius: BorderRadius.only(topRight: Radius.circular( 25.0),topLeft:Radius.circular( 25.0), ),

                          ),
                          width: 70,
                          height: 20,
                          child:  new Text('Bizerte',style:TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.w400,color: Colors.green.shade400,fontSize: 20.0),),
                        ),
                      ]),






                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          width:300,
                          margin: EdgeInsets.all(1.0),
                          padding: new EdgeInsets.all(5.0),
                          child: new Column(
                            children: <Widget>[
                              new Text('laboratoire hamdi dhaouadi ',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold)
                              ),

                              RaisedButton(
                                  child:  Icon(Icons.location_on_outlined),
                                  shape: CircleBorder(), onPressed: () {
                                _launchUrl("https://www.google.com/maps/search/laboratoire+hamdi+dhaouadi+bizerte/@37.2714934,9.876757,16z/data=!3m1!4b1");
                              }

                              ),
                              SizedBox(
                                  width: 150, // <-- Your width

                                  child:    RaisedButton(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side:  BorderSide(color: Colors.black),
                                        borderRadius: new BorderRadius.circular(18.0),

                                      ),
                                      onPressed: (){
                                        _launchCaller("tel:$m");},
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.phone
                                            ),
                                            new Text('72425158', style: TextStyle(color: Colors.black)) ,
                                          ])
                                  )

                              ),




                            ],
                          ),



                        ),
                      ],),
                  ),
                  new Row(
                      children: <Widget>[
                        new Text('          '),
                        new Container(
                          decoration: BoxDecoration(
                            color:  Colors.black,
                            borderRadius: BorderRadius.only(topRight: Radius.circular( 25.0),topLeft:Radius.circular( 25.0), ),

                          ),
                          width: 70,
                          height: 20,
                          child:  new Text('Sousse',style:TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.w400,color: Colors.green.shade400,fontSize: 20.0),),
                        ),
                      ]),






                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                            width:300,
                            margin: EdgeInsets.all(1.0),
                            padding: new EdgeInsets.all(5.0),
                            child: new Column(
                                children: <Widget>[
                                  new Text('Hôpital Farhat Hached',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold)
                                  ),

                                  RaisedButton(
                                      child:  Icon(Icons.location_on_outlined),
                                      shape: CircleBorder(), onPressed: () {
                                    _launchUrl("https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D9%81%D8%B1%D8%AD%D8%A7%D8%AA+%D8%AD%D8%B4%D8%A7%D8%AF%E2%80%AD/@35.8296146,10.6299381,17z/data=!3m1!4b1!4m5!3m4!1s0x130275797d157f91:0x968b6d8b9b1b76cc!8m2!3d35.8296103!4d10.6277494");
                                  }

                                  ),
                                  SizedBox(
                                      width: 150, // <-- Your width

                                      child:    RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 5.0,
                                          shape: RoundedRectangleBorder(
                                            side:  BorderSide(color: Colors.black),
                                            borderRadius: new BorderRadius.circular(18.0),

                                          ),
                                          onPressed: (){
                                            _launchCaller("tel:$n");},
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(Icons.phone
                                                ),
                                                new Text('73102500', style: TextStyle(color: Colors.black)) ,
                                              ])
                                      )

                                  ),



                                ])),
                      ],),
                  ),

                  new Row(
                      children: <Widget>[
                        new Text('          '),
                        new Container(
                          decoration: BoxDecoration(
                            color:  Colors.black,
                            borderRadius: BorderRadius.only(topRight: Radius.circular( 25.0),topLeft:Radius.circular( 25.0), ),

                          ),
                          width: 85,
                          height: 20,
                          child:  new Text('Monastir',style:TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.w400,color: Colors.green.shade400,fontSize: 20.0),),
                        ),
                      ]),



                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                            width:300,
                            margin: EdgeInsets.all(1.0),
                            padding: new EdgeInsets.all(5.0),
                            child: new Column(
                                children: <Widget>[
                                  new Text('Hôpital Fattouma Bourguiba',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold)
                                  ),

                                  RaisedButton(
                                      child:  Icon(Icons.location_on_outlined),
                                      shape: CircleBorder(), onPressed: () {
                                    _launchUrl("https://www.google.com/maps/place/%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D9%81%D8%B7%D9%88%D9%85%D8%A9+%D8%A8%D9%88%D8%B1%D9%82%D9%8A%D8%A8%D8%A9+%D8%A8%D8%A7%D9%84%D9%85%D9%86%D8%B3%D8%AA%D9%8A%D8%B1%E2%80%AD/@35.7703361,10.8359541,17z/data=!3m1!4b1!4m5!3m4!1s0x130212cd7f8cea6f:0x536abf0a17e2086a!8m2!3d35.7703318!4d10.8337654");
                                  }

                                  ),
                                  SizedBox(
                                      width: 150, // <-- Your width

                                      child:    RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 5.0,
                                          shape: RoundedRectangleBorder(
                                            side:  BorderSide(color: Colors.black),
                                            borderRadius: new BorderRadius.circular(18.0),

                                          ),
                                          onPressed: (){
                                            _launchCaller("tel:$o");},
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(Icons.phone
                                                ),
                                                new Text('73908700', style: TextStyle(color: Colors.black)) ,
                                              ])
                                      )

                                  ),





                                ])),
                      ],),
                  ),

                  new Row(
                      children: <Widget>[
                        new Text('          '),
                        new Container(
                          decoration: BoxDecoration(
                            color:  Colors.black,
                            borderRadius: BorderRadius.only(topRight: Radius.circular( 25.0),topLeft:Radius.circular( 25.0), ),

                          ),
                          width: 50,
                          height: 20,
                          child:  new Text('Sfax',style:TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.w400,color: Colors.green.shade400,fontSize: 20.0),),
                        ),
                      ]),

                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          width:300,
                          margin: EdgeInsets.all(1.0),
                          padding: new EdgeInsets.all(5.0),
                          child: new Column(
                            children: <Widget>[
                              new Text(' Hôpital Habib Bourguiba',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold)
                              ),

                              RaisedButton(
                                  child:  Icon(Icons.location_on_outlined),
                                  shape: CircleBorder(), onPressed: () {
                                _launchUrl("https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D8%AD%D8%A8%D9%8A%D8%A8+%D8%A8%D9%88%D8%B1%D9%82%D9%8A%D8%A8%D8%A9+%D8%A8%D8%B5%D9%81%D8%A7%D9%82%D8%B3%E2%80%AD/@34.7402721,10.7504014,17z/data=!3m1!4b1!4m5!3m4!1s0x1301d32b62bdd5b3:0x8980eefe4afd7351!8m2!3d34.7402677!4d10.7482127");
                              }

                              ),
                              SizedBox(
                                  width: 150, // <-- Your width

                                  child:    RaisedButton(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side:  BorderSide(color: Colors.black),
                                        borderRadius: new BorderRadius.circular(18.0),

                                      ),
                                      onPressed: (){
                                        _launchCaller("tel:$p");},
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.phone
                                            ),
                                            new Text('74242333', style: TextStyle(color: Colors.black)) ,
                                          ])
                                  )

                              ),




                            ],
                          ),



                        ),
                      ],),
                  ),

                  new Row(
                      children: <Widget>[
                        new Text('          '),
                        new Container(
                          decoration: BoxDecoration(
                            color:  Colors.black,
                            borderRadius: BorderRadius.only(topRight: Radius.circular( 25.0),topLeft:Radius.circular( 25.0), ),

                          ),
                          width: 60,
                          height: 20,
                          child:  new Text('Djerba',style:TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.w400,color: Colors.green.shade400,fontSize: 20.0),),
                        ),
                      ]),



                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          width:300,
                          margin: EdgeInsets.all(1.0),
                          padding: new EdgeInsets.all(5.0),
                          child: new Column(
                            children: <Widget>[
                              new Text('Laboratoire Ben Youssef',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold)
                              ),

                              RaisedButton(
                                  child:  Icon(Icons.location_on_outlined),
                                  shape: CircleBorder(), onPressed: () {
                                _launchUrl("https://www.google.com/maps/place/Laboratoire+d%E2%80%99analyses+m%C3%A9dicales+BEN+YOUSSEF/@33.8745231,10.8963767,17z/data=!3m1!4b1!4m5!3m4!1s0x13aaa32138895f59:0x57e980ac7f961247!8m2!3d33.8745187!4d10.894188");
                              }

                              ),
                              SizedBox(
                                  width: 150, // <-- Your width

                                  child:    RaisedButton(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side:  BorderSide(color: Colors.black),
                                        borderRadius: new BorderRadius.circular(18.0),

                                      ),
                                      onPressed: (){
                                        _launchCaller("tel:$q");},
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.phone
                                            ),
                                            new Text('75650018', style: TextStyle(color: Colors.black)) ,
                                          ])
                                  )

                              ),



                            ],
                          ),



                        ),
                      ],),
                  ),
                  new Row(
                      children: <Widget>[
                        new Text('          '),
                        new Container(
                          decoration: BoxDecoration(
                            color:  Colors.black,
                            borderRadius: BorderRadius.only(topRight: Radius.circular( 25.0),topLeft:Radius.circular( 25.0), ),

                          ),
                          width: 60,
                          height: 20,
                          child:  new Text('Gabes',style:TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.w400,color: Colors.green.shade400,fontSize: 20.0),),
                        ),
                      ]),
                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                            width:300,
                            margin: EdgeInsets.all(1.0),
                            padding: new EdgeInsets.all(5.0),
                            child: new Column(
                                children: <Widget>[
                                  new Text('Laboratoire d\'Analyses Médicales Noomen Batita',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold)
                                  ),

                                  RaisedButton(
                                      child:  Icon(Icons.location_on_outlined),
                                      shape: CircleBorder(), onPressed: () {
                                    _launchUrl("https://www.google.com/maps/place/Laboratoire+d'analyses+m%C3%A9dicales+Batita/@33.8849855,10.1030455,17z/data=!3m1!4b1!4m5!3m4!1s0x12556f519d7de749:0xf262060270a4bcbf!8m2!3d33.8849811!4d10.1008568");
                                  }

                                  ),
                                  SizedBox(
                                      width: 150, // <-- Your width

                                      child:    RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 5.0,
                                          shape: RoundedRectangleBorder(
                                            side:  BorderSide(color: Colors.black),
                                            borderRadius: new BorderRadius.circular(18.0),

                                          ),
                                          onPressed: (){
                                            _launchCaller("tel:$r");},
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(Icons.phone
                                                ),
                                                new Text('75275716', style: TextStyle(color: Colors.black)) ,
                                              ])
                                      )

                                  ),






                                ])),
                      ],),
                  ),
                  new Row(
                      children: <Widget>[
                        new Text('          '),
                        new Container(
                          decoration: BoxDecoration(
                            color:  Colors.black,
                            borderRadius: BorderRadius.only(topRight: Radius.circular( 25.0),topLeft:Radius.circular( 25.0), ),

                          ),
                          width: 60,
                          height: 20,
                          child:  new Text('Zarzis',style:TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.w400,color: Colors.green.shade400,fontSize: 20.0),),
                        ),
                      ]),


                  new Card(
                    color: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      side:  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                            width:300,
                            margin: EdgeInsets.all(1.0),
                            padding: new EdgeInsets.all(5.0),
                            child: new Column(
                                children: <Widget>[
                                  new Text('Laboratoire d\'Analyses Médicales Ahmed Miledi',style: TextStyle(fontFamily: 'Parisienne',fontWeight: FontWeight.bold)
                                  ),

                                  RaisedButton(
                                      child:  Icon(Icons.location_on_outlined),
                                      shape: CircleBorder(),
                                      onPressed: () {
                                        _launchUrl("https://www.google.com/maps/place/Laboratoire+Miladi/@33.5010464,11.1063711,17z/data=!3m1!4b1!4m5!3m4!1s0x13aaef12725b4379:0x5dab4e47a310b1a1!8m2!3d33.5010419!4d11.1041824");
                                      }

                                  ),
                                  SizedBox(
                                      width: 150, // <-- Your width

                                      child:    RaisedButton(
                                          color: Colors.transparent,
                                          elevation: 5.0,
                                          shape: RoundedRectangleBorder(
                                            side:  BorderSide(color: Colors.black),
                                            borderRadius: new BorderRadius.circular(18.0),

                                          ),
                                          onPressed: (){
                                            _launchCaller("tel:$s");},
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(Icons.phone
                                                ),
                                                new Text('75692600', style: TextStyle(color: Colors.black)) ,
                                              ])
                                      )

                                  ),






                                ])),
                      ],),
                  ),














                ],
              ),
            ),
          ),
        ),
    );
  }

}
