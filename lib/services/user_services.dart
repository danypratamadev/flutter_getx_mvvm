import 'dart:convert';

import 'package:flutter_getx_mvvm/models/user_model.dart';
import 'package:flutter_getx_mvvm/shared/api/api_endpoint.dart';
import 'package:http/http.dart' as http;

class UserServices {

  Future<List<UserModel>> fetchUser() async {
    try {
      final uri = Uri.parse(ApiEndpoint.baseUrl + ApiEndpoint.users).replace(queryParameters: {
        'page': '1',
        'per_page': '10'
      });
      final response = await http.get(uri);
      if(response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body);
        List<UserModel> users = List.from(data['data'].map((user) => UserModel.fromJson(json: user)));
        return users;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

}