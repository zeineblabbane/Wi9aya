import 'package:http/http.dart';
import 'package:Wi9aya/src/controller/network_calls.dart';

final client = Client();
final netWorkCalls = NetworkCalls();
final RegExp reg = new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
final Function mathFunc = (Match match) => '${match[1]},';

abstract class UrlConstants {
  static const String baseUrl = 'https://coronavirus-19-api.herokuapp.com';
  static const String allCountries = '$baseUrl/countries';
}
