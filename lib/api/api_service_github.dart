import 'dart:convert';

import 'package:dio/dio.dart';

import 'api_service.dart';

class ApiServiceGithub extends ApiService {
  final url = 'https://api.github.com';

  @override
  Future<dynamic> request(String method, String path, Map<String, dynamic> data, Map<String, dynamic> header) async {
    final dio = Dio();
    final response = await dio.request(
      url + path,
      options: Options(
        method: method.toUpperCase(),
        headers: header,
      ),
    );
    return json.decode(json.encode(response.data));
  }
}