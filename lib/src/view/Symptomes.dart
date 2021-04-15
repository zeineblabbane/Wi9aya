import 'package:flutter/material.dart';
import 'package:Wi9aya/src/view/SymptomeView.dart';
import 'package:Wi9aya/src/model/Symptome.dart';

class Symptomes extends StatefulWidget {
  Symptomes({Key key}) : super(key: key);
  @override
  _Symptomes createState() => _Symptomes();
}

class _Symptomes extends State<Symptomes> {

  List<Symptome> symptomes=[
    Symptome(name: 'Fiévre',percentage: '87.9%',description:"La fièvre est définie par une température rectale au repos supérieure ou égale à 38,0 °C." ),
    Symptome(name: 'Toux séche',percentage: '67.7%',description:"Elle se manifeste par une sensation de « chatouillement » au fond de la gorge qui déclenche le réflexe de toux" ),
    Symptome(name: 'Fatigue',percentage: '38.1%',description: "La fatigue est une sensation d'épuisement, de lassitude ou de somnolence consécutive."),
    Symptome(name: 'Expectoration',percentage: '33.4%',description: "L'expectoration est l'expulsion par la bouche, au cours d'un effort de toux, de produits pathologiques provenant des voies bronchopulmonaires et aériennes supérieures."),
    Symptome(name: 'Essoufflement',percentage: '18.6%',description:" L'essoufflement s’agit d’une augmentation du rythme respiratoire qui permet à l’organisme d’augmenter l’apport d’oxygène." ),
    Symptome(name: 'Douleurs musculaires ou articulaires',percentage: '14.8%',description:"Une douleur articulaire ou musculaire est une douleur liée à une atteinte d’un des composants de l’articulation ou musculaire." ),
    Symptome(name: 'Gorge irritée',percentage: '13.9%',description: "Gorge irritée s'agit d'une douleur pharyngée provoquée par une inflammation située au niveau de la cavité buccale, le larynx et/ou le pharynx."),
    Symptome(name: 'Mal de tête',percentage: '13.6%',description: "Une céphalée, appelée familièrement mal de tête, est une douleur locale ressentie au niveau de la boîte crânienne ou parfois de la nuque."),
    Symptome(name: 'Frissons',percentage: '11.4%',description:"Tremblement irrégulier, dû à la fièvre, accompagné d'une sensation de froid." ),
    Symptome(name: 'Nausée ou vomissement',percentage: '5.0%',description:"La nausée désigne une sensation d'inconfort au niveau de l'estomac, un 'mal au cœur' qui entraîne une envie de vomir. Le vomissement est l'expulsion du contenu de l'estomac par la bouche." ),
    Symptome(name: 'Congestion nasale',percentage: '4.8%',description: "La congestion nasale se manifeste lorsque les tissus internes du nez gonflent ou produisent du mucus."),
    Symptome(name: 'Diarrhéé',percentage: '3.7%',description: "La diarrhée est un problème fréquent. Elle se caractérise par des selles de consistance liquide ou molle, plus volumineuses et nombreuses qu'à l'habitude (plus de 3 selles par jour)."),
    Symptome(name: 'Hémoptysie',percentage: '0.9%',description: "L'hémoptysie est un rejet, à l'occasion d'effort de toux, de sang provenant des voies aériennes sous-glottiques."),
    ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Symptomes',
          style: TextStyle(
            color: Colors.black,
          ),
          ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey,
      body: Column(
          
          children: <Widget>[
            SizedBox(height: 25.0,),
            Container(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Les symptômes de la COVID-19 peuvent varier d\'une personne à l\'autre. Ils peuvent aussi varier en fonction du groupe d\'âge. ',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Voici quelques-uns des symptômes les plus fréquemment signalés:',
                style: TextStyle(
                    fontSize: 15,
                  ),
              ),
            ),

            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListView(
                  children: ListTile.divideTiles(
                    context: context,
                    tiles: 
                    symptomes.map((symptome)=> SymptomeView(symptome: symptome)),
                  ).toList(),
                ),
           ),
            ),
          ],
      )
    );
  }
}
