import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get_connect.dart';

class ErrorModel {
  final int? statusCode;
  final dynamic bodyString;
  const ErrorModel({this.statusCode, this.bodyString});
}

enum METHODE {
  get,
  post,
  delete,
  update,
}

class ApiBaseHelper extends GetConnect {
  final String? baseurl = 'https://tshare-com.onrender.com/';

  Future<dynamic> onNetworkRequesting(
      {required String url,
      Map<String, String>? header,
      Map<String, dynamic>? body,
      required METHODE? methode,
      String token = "",
      required bool isAuthorize}) async {
    if (token.isEmpty) {
      token =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjg0MDgxMTY5LCJleHAiOjE2ODQxNjc1Njl9.sfmQGned7KknBiBUInd3xng74-WkgKpBSJpiwqCKoB4';
    }
    final fullUrl = baseurl! + url;
    debugPrint('🥰 Url: $token');
    debugPrint('Url: $fullUrl');
    Map<String, String> header = isAuthorize
        ? {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
          }
        : {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          };
    try {
      switch (methode) {
        case METHODE.get:
          final response = await get(fullUrl, headers: header);
          return _returnResponse(response);
        case METHODE.post:
          if (body != null) {
            final response =
                await post(fullUrl, json.encode(body), headers: header);
            return _returnResponse(response);
          }
          return Future.error(
              const ErrorModel(bodyString: 'Body must be included'));

        case METHODE.delete:
          final response = await delete(fullUrl, headers: header);
          return _returnResponse(response);
        case METHODE.update:
          if (body != null) {
            final response =
                await put(fullUrl, json.encode(body), headers: header);
            return _returnResponse(response);
          }
          return Future.error(
              const ErrorModel(bodyString: 'Body must be included'));

        default:
          break;
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  dynamic _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.bodyString!);
        return responseJson;
      case 201:
        var responseJson = json.decode(response.bodyString!);
        return responseJson;
      case 202:
        var responseJson = json.decode(response.bodyString!);
        return responseJson;
      case 404:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
      case 400:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
      case 401:
      case 403:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));

      case 500:
        break;
      default:
        {
          return Future.error(ErrorModel(
              statusCode: response.statusCode,
              bodyString: json.decode(response.bodyString ?? "")));
        }
    }
  }
}
