import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:Wi9aya/src/view/Contact.dart';
import 'package:Wi9aya/src/view/Inforamtions.dart';
import 'package:Wi9aya/src/view/Symptomes.dart';
import 'package:Wi9aya/src/view/Statistique.dart';

class AppScreen extends StatefulWidget {
  @override
  _AppScreen createState() => _AppScreen();
}

class _AppScreen extends State<AppScreen> {
  PageController pageController = PageController();
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Statistique(),
          Symptomes(),
          Informations(),
          Contact(),
        ],
        onPageChanged: (int index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.teal.shade900,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.teal.shade900,
        height: 60,
        items: <Widget>[
          Icon(
            Icons.bar_chart_rounded,
            size: 27,
            color: Colors.white,
          ),
          Icon(
            Icons.sick_rounded,
            size: 27,
            color: Colors.white,
          ),
          Icon(
            Icons.info_rounded,
            size: 27,
            color: Colors.white,
          ),
          Icon(
            Icons.phone_callback_rounded,
            size: 27,
            color: Colors.white,
          ),
        ],
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        index: pageIndex,
        onTap: (int index) {
          setState(() {
            pageIndex = index;
            pageController.animateToPage(pageIndex,
                duration: Duration(milliseconds: 200),
                curve: Curves.bounceInOut);
          });
        },
      ),
    );
  }
}
