import 'dart:convert';
import 'package:http/http.dart';

class ApiClient {
  static Map<String, dynamic> setupResponse(Response response) {
    Map<String, dynamic> responseData = {};
    print(response.request.url);
    print(response.body);
    if (response.statusCode != 200) {
      responseData['status'] = false;
      if (response.statusCode == 404) {
        responseData['data'] = 'Server not found.';
      } else if (response.statusCode == 401) {
        responseData['data'] = 'Unauthenticated.';
      } else {
        responseData['data'] = 'Something when wrong, please try again.';
      }
    } else {
      responseData = json.decode(response.body);
      responseData['status_code'] = response.statusCode;
    }
    return responseData;
  }
}
