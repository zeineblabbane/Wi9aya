import 'package:flutter/material.dart';
import 'package:Wi9aya/src/controller/covid_api.dart';
import 'package:Wi9aya/widgets/statistic_card.dart';
import 'package:Wi9aya/widgets/virus_loader.dart';
import 'package:Wi9aya/src/model/country_model.dart';

class CountryDetailPage extends StatefulWidget {
  final String countryName;

  CountryDetailPage({@required this.countryName});

  @override
  _CountryDetailPageState createState() => _CountryDetailPageState();
}

class _CountryDetailPageState extends State<CountryDetailPage> {
  Country _countryInfo;
  double deathPercentage;
  double activePercentage;
  bool _isLoading = false;
  CovidApi api = CovidApi();
  double recoveryPercentage;

  @override
  void initState() {
    super.initState();
    _fetchCountryDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getCustomAppBar(widget.countryName, context),
      body: SafeArea(
        child: _isLoading
            ? VirusLoader()
            : _countryInfo == null
                ? buildErrorMessage()
                : ListView(
                    children: <Widget>[
                      StatisticCard(
                        color: Colors.orange,
                        text: 'Total cases',
                        icon: Icons.timeline,
                        stats: _countryInfo.cases,
                      ),
                      StatisticCard(
                        color: Colors.green,
                        text: 'Total recovered',
                        icon: Icons.verified_user,
                        stats: _countryInfo.recovered,
                      ),
                      StatisticCard(
                        color: Colors.blue,
                        text: 'Active cases',
                        icon: Icons.whatshot,
                        stats: _countryInfo.active,
                      ),
                      StatisticCard(
                        color: Colors.black,
                        text: 'Critical cases',
                        icon: Icons.battery_alert,
                        stats: _countryInfo.critical,
                      ),
                      StatisticCard(
                        color: Colors.blueGrey,
                        text: 'Total tests',
                        icon: Icons.youtube_searched_for,
                        stats: _countryInfo.totalTests,
                      ),
                      StatisticCard(
                        color: Colors.red,
                        text: 'Total deaths',
                        icon: Icons.airline_seat_individual_suite,
                        stats: _countryInfo.deaths,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Card(
                          elevation: 4.0,
                          child: ListTile(
                            leading: Icon(Icons.sentiment_very_dissatisfied),
                            title: Text('Death percentage'),
                            trailing: Text(
                              deathPercentage.toStringAsFixed(2) + ' %',
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Card(
                          elevation: 4.0,
                          child: ListTile(
                            leading: Icon(Icons.sentiment_very_satisfied),
                            title: Text('Recovery percentage'),
                            trailing: Text(
                              recoveryPercentage.toStringAsFixed(2) + ' %',
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
      ),
    );
  }

  Center buildErrorMessage() {
    return Center(
      child: Text(
        'Unable to fetch data',
        style: Theme.of(context).textTheme.title.copyWith(color: Colors.grey),
      ),
    );
  }

  void _fetchCountryDetails() async {
    setState(() => _isLoading = true);
    try {
      var countryInfo = await api.getCountryByName(widget.countryName);
      deathPercentage = (countryInfo.deaths / countryInfo.cases) * 100;
      recoveryPercentage = (countryInfo.recovered / countryInfo.cases) * 100;
      activePercentage = 100 - (deathPercentage + recoveryPercentage);

      print(deathPercentage);
      print(recoveryPercentage);
      print(activePercentage);
      setState(() => _countryInfo = countryInfo);
    } catch (ex) {
      setState(() => _countryInfo = null);
    } finally {
      setState(() => _isLoading = false);
    }
  }
}

_getCustomAppBar(String nameCountry, BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: Container(
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
            color: Colors.white,
          ),
          Text(
            nameCountry,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: Icon(Icons.show_chart_outlined),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
    ),
  );
}
