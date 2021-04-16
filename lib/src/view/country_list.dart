import 'package:flutter/material.dart';
import 'package:Wi9aya/src/controller/covid_api.dart';
import 'package:Wi9aya/widgets/virus_loader.dart';
import 'package:Wi9aya/src/model/country_model.dart';
import 'country_detail.dart';

class CountryListPage extends StatefulWidget {
  @override
  _CountryListPageState createState() => _CountryListPageState();
}

class _CountryListPageState extends State<CountryListPage> {
  bool _isLoading = false;
  CovidApi api = CovidApi();
  var items = List<Country>();
  var _focusNode = FocusNode();
  List<Country> _countries = List<Country>();
  var _controller = TextEditingController();

  HomeCountry _homeCountry;

  @override
  void initState() {
    super.initState();
    _fetchCountries();
  }

  void filterSearchResults(String query) {
    List<Country> dummySearchList = List<Country>();
    dummySearchList.addAll(_countries);
    if (query.isNotEmpty) {
      List<Country> dummyListData = List<Country>();
      dummySearchList.forEach((item) {
        if (item.country.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(_countries);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? VirusLoader()
          : _countries == null
              ? buildErrorMessage()
              : Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        child: TextFormField(
                          focusNode: _focusNode,
                          controller: _controller,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.redAccent[400],
                              ),
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.redAccent[400],
                              )),
                              labelText: 'Search',
                              labelStyle: TextStyle(
                                color: Colors.redAccent[400],
                              ),
                              hintText: 'Enter country name'),
                          onChanged: filterSearchResults,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          var country = items[index];
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Card(
                              elevation: 4.0,
                              child: ListTile(
                                onTap: () {
                                  _controller.clear();
                                  filterSearchResults('');
                                  _focusNode.unfocus();
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => CountryDetailPage(
                                          countryName: country.country),
                                    ),
                                  );
                                },
                                title: Row(
                                  children: <Widget>[
                                    Text(country.country),
                                    if (_homeCountry != null &&
                                        _homeCountry.name
                                                .compareTo(country.country) ==
                                            0)
                                      Icon(
                                        Icons.home,
                                        size: 16.0,
                                      )
                                  ],
                                ),
                                subtitle:
                                    Text('Cases: ' + country.cases.toString()),
                                trailing: Icon(Icons.arrow_right),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
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

  void _fetchCountries() async {
    try {
      setState(() => _isLoading = true);
      var countries = await api.getAllCountriesInfo();
      setState(() {
        _countries = countries;
        items.addAll(_countries);
      });
    } catch (ex) {
      setState(() => _countries = null);
    } finally {
      setState(() => _isLoading = false);
    }
  }
}
