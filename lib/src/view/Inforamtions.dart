import 'package:flutter/material.dart';
//import 'package:flutter_app/details.dart';
import 'common_widget.dart';
import 'dart:ui' as ui;
import 'package:flutter/painting.dart';
import 'package:Wi9aya/src/view/details.dart';

class Informations extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<Informations> {
  final double _borderRadius =24;
  var items = [
    CovidInfo("\n""   Comment on peut attraper"+"\n"+" la maladie ?"+"\n""\n", "  1)Cette maladie se transmet "+"\n"+" principalement "+"\n"+" par les goulettes respiratoires"+"\n"+" et le contact étroit avec les personnes"+"\n"+" malades."+"\n", "  2)Quand vous éternuez ou toussez,"+"\n"+"vous projetez des goulettes respiratoires"+"\n"+" du votre nez et bouche"+"\n", "  3)Ces goulettes peuvent "+"\n"+" contenir l'infection.Ceci est comment "+"\n"+"les virus se transmettent"+"\n", "  4)Generalement, vous devez etre proche"+"\n"+" de la personne(moins que 2 mètre)"+"\n"+" pour que le virus se transmet"+"\n"+" de cette manière"+"\n", "  5)Il y'a aussi la possibilitée "+"\n"+"de la transmission aérosole si vous etes"+"\n"+" exposé à une haute concentration pour " +"\n"+" une langue durée du temps et dans " +"\n"+"un environnement clos"+"\n", "  6)L'OMS a déclaré que le risque " +"\n"+"de la transmission par une personne sans" +"\n"+" symptomes et (très faible) et le risqué "+"\n"+ "de transmission fécale est (faible) ", "",Colors.pink, Colors.white),
    CovidInfo("\n""   Comment je peux me protéger ?""\n", " 1)Ne voyagez pas dans les régions " +"\n"+" affectés" +"\n", "2)Quand vous toussez ou éternuez," +"\n"+" faites-le dans votre coude ou dans votre" +"\n"+" mouchoir. Evitez d'utiliser vos mains""\n", "3)Lavez-vous les mains fréquemment et" +"\n"+" soigneusement avec l'eau et le savon""\n", "4)Evitez les personnes évidemment malades " +"\n"+"et les lieux avec une haute concentration " +"\n"+"de personnes.", "", "", "",Colors.pinkAccent, Colors.blue),
    CovidInfo("\n""   En cas d'infection !""\n","1)Informez l'institution ou l'agence " +"\n"+"de santé dans votre pays par un numéro " +"\n"+"d'urgence ou vous serz informés au détail.""\n", "2)S'auto-isoler à la maison a été " +"\n"+"recommandé pour les personnes" +"\n"+" diagnostiquées avec COVID-19 " +"\n"+"et celles qui soupçonnent qu'elles" +"\n"+" été infectées""\n","3)Je prends ma température 2 fois par jour , " +"\n"+" En cas de fièvre ou de maux de tête," +"\n"+" Je peux prendre du paracétamol :" +"\n"+" (1 gramme, 3 fois par jour " +"\n"+"maximum (3 grammes par jour au total). " +"\n"+"et Je ne dois pas prendre d’ibuprofène, " +"\n"+"ni un autre anti-inflammatoire.""\n","4)Si je prends un traitement " +"\n"+"pour une autre maladie, je le continue." +"\n"+" En cas de doute sur un médicament, " +"\n"+"j’appelle mon médecin.""\n","5)J’identifie les cas-contacts " +"\n"+"et je les informe""\n", "6)Je porte un masque chirurgical " +"\n"+"en présence d’une personne dans " +"\n"+"une même pièce.""\n", "7)Si j’ai des difficultés à respirer," +"\n"+"j’appelle immédiatement les urgences",Colors.pinkAccent, Colors.red,)
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Information sur le virus "),
        centerTitle: true,
      ),


      body:ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            return
              InkWell(

                child:Center(

                  child: Padding(
                    padding: const EdgeInsets.all(20.0),

                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                  colors: [items[index].startColor,items[index].endColor],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight
                              ),
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 12,
                                  offset: Offset(0,6),
                                )
                              ]
                          ),

                        ),
                        Positioned(
                          right: 10,
                          bottom: 10,
                          top: 0,
                          child: CustomPaint(
                            size: Size(100, 150),
                            painter: CustomCardShapePainter(_borderRadius,
                                items[index].startColor, items[index].endColor),
                          ),
                        ),
                        Positioned.fill(
                          child:Row(
                            children: [
                              Expanded(
                                  flex: 6,
                                  child:Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(items[index].title,
                                        style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.w500,),),
                                      PatingBar(),

                                    ],
                                  )
                              ),],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder:(context)=> new Details(items[index])));
                },);
          }
      ),);
  }
}


class CovidInfo {
  final String title;
  final String body1;
  final String body2;
  final String body3;
  final String body4;
  final String body5;
  final String body6;
  final String body7;
  final Color startColor;
  final Color endColor;


  CovidInfo(this.title, this.body1, this.body2, this.body3,
      this.body4,this.body5,this.body6,this.body7,this.startColor, this.endColor);
}
class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 35.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}