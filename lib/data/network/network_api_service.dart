import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:sweat_squad/data/appException/app_exception.dart';
import 'package:sweat_squad/data/network/base_api_service.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiService {
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 201:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 401:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 404:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      default:
        throw ServerException('Server error');
    }
  }

  @override
  Future getApi(String url) async {
    dynamic responseJson;
    try {
      var response = await http.get(Uri.parse(url)).timeout(
            const Duration(seconds: 30),
          );
      responseJson = returnResponse(response);
      return responseJson;
    } on SocketException {
      throw InternetException('No internet');
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Future postApi(String url, data) async {
    dynamic responseJson;

    try {
      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode(data),
        headers: {'Content-Type': 'application/json'},
      ).timeout(
        const Duration(seconds: 30),
      );
      print(response.statusCode);
      responseJson = returnResponse(response);
      return responseJson;
    } on SocketException {
      throw InternetException('No internet');
    } on FormatException {
      throw ServerException('Internal server error');
    } on HttpException {
      throw ServerException('Http error occured');
    } on TimeoutException {
      throw RequestTimeoutEception('Time out');
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }
}
