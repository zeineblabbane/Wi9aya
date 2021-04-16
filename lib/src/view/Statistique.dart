import 'package:flutter/material.dart';
import 'country_list.dart';
import 'global_info.dart';

class Statistique extends StatefulWidget {
  @override
  _StatistiqueState createState() => _StatistiqueState();
}

class _StatistiqueState extends State<Statistique> {
  String _currentAppBarTitle = 'Statistiques';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 125,
          title: Text(
            _currentAppBarTitle,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.menu), color: Colors.white, onPressed: () {}),
          actions: [
            IconButton(
                icon: Icon(Icons.show_chart_outlined),
                color: Colors.white,
                onPressed: () {}),
          ],
          flexibleSpace: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.tealAccent,
                  Colors.redAccent,
                ],
              ),
            ),
          ),
          bottom:
              TabBar(indicatorColor: Colors.white, indicatorWeight: 4, tabs: [
            Tab(
              icon: Icon(Icons.public),
              text: 'Tout le monde',
            ),
            Tab(
              icon: Icon(Icons.list),
              text: 'Liste des pays',
            ),
          ]),
          elevation: 10,
        ),
        body: TabBarView(
          children: [
            GlobalInfoPage(),
            CountryListPage(),
          ],
        ),
      ),
    );
  }
}
