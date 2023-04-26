import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

const _storage = FlutterSecureStorage();

Future<void> updateAccessToken() async {
  final response = await http
      .get(Uri.parse('https://radio.ditlevolaus.no/get-access-token'));

  if (response.statusCode == 200) {
    final String accessToken = jsonDecode(response.body)['access_token'];
    await _storage.write(key: 'ACCESS_TOKEN', value: accessToken);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

Future<dynamic> _spotifyRequestWithAuth({
  required http.Request request,
  int recursionDepth = 0,
}) async {
  if (recursionDepth >= 3) {
    throw Exception('Max recursion trying to authorize');
  }

  if (await _storage.read(key: 'ACCESS_TOKEN') == null) {
    await updateAccessToken();
  }
  final String? accessToken = await _storage.read(key: 'ACCESS_TOKEN');
  request.headers.addAll({
    'Authorization': 'Bearer $accessToken',
  });
  final streamedResponse = await request.send();
  final response = await http.Response.fromStream(streamedResponse);
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else if (response.statusCode == 401) {
    await updateAccessToken();
    // have to copy request as request object can't be used twice
    http.Request copiedRequest = http.Request(request.method, request.url);
    copiedRequest.body = request.body;
    copiedRequest.headers.addAll(request.headers);

    return _spotifyRequestWithAuth(
      request: copiedRequest,
      recursionDepth: recursionDepth + 1,
    );
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to search');
  }
}

Future<Map<String, dynamic>> getRecommendations({
  required String parametersQueryString,
}) async {
  return await _spotifyRequestWithAuth(
    request: http.Request(
      'get',
      Uri.parse(
        'https://api.spotify.com/v1/recommendations/$parametersQueryString',
      ),
    ),
  );
}
