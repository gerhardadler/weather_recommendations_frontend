import 'dart:convert';
import 'package:http/http.dart' as http;

class ClientWithYrUserAgent extends http.BaseClient {
  final http.Client _client;

  ClientWithYrUserAgent(this._client);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.headers['User-Agent'] =
        'WeatherRecommendations https://github.com/gerhardadler/weather_recommendations_frontend';
    return _client.send(request);
  }
}

Future<Map<String, dynamic>> getYrData({
  required num lat,
  required num lon,
}) async {
  final yrClient = ClientWithYrUserAgent(http.Client());
  final response = await yrClient.get(
    Uri.parse(
      'https://api.met.no/weatherapi/locationforecast/2.0/compact?lat=$lat&lon=$lon',
    ),
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    print(jsonDecode(response.body));
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to get weather data');
  }
}

Future<String> currentWeatherName({
  required num lat,
  required num lon,
}) async {
  Map<String, dynamic> yrData = await getYrData(lat: lat, lon: lon);
  return yrData['properties']['timeseries'][0]['data']['next_1_hours']
      ['summary']['symbol_code'];
}
