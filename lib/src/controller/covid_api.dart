import 'dart:convert';
import 'package:Wi9aya/src/model/country_model.dart';
import 'package:Wi9aya/src/model/global_info_model.dart';
import '../../global.dart';

class CovidApi {
  Future<GlobalInfo> getGlobalInfo() async {
    String response =
        await netWorkCalls.get('${UrlConstants.allCountries}/World');
    return GlobalInfo.fromJson(jsonDecode(response));
  }

  Future<List<Country>> getAllCountriesInfo() async {
    var response = await netWorkCalls.get(UrlConstants.allCountries);
    var list = jsonDecode(response) as List;
    return list.map((item) => Country.fromJson(item)).toList();
  }

  Future<Country> getCountryByName(String country) async {
    var response =
        await netWorkCalls.get('${UrlConstants.allCountries}/$country');
    return Country.fromJson(jsonDecode(response));
  }
}
