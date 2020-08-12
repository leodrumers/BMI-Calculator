import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);
    print(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print('There was an error in the request for url:$url');
    }
  }
}
