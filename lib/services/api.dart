import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:agroconnect/auth_logic/api_response.dart';
import 'package:agroconnect/auth_logic/api_error.dart';
import 'package:agroconnect/auth_logic/user.dart';
import 'dart:convert';



String _baseUrl = "http://192.168.1.8:9001/";
Future<ApiResponse> authenticateUser(String username, String password) async {
  ApiResponse _apiResponse = new ApiResponse();

  try {
    final response = await http.post(Uri.parse('${_baseUrl}user/login'), body: {
      'username': username,
      'password': password,
    });

    switch (response.statusCode) {
      case 200:
        _apiResponse.Data = User.fromJson(json.decode(response.body));
        break;
      case 401:
        _apiResponse.ApiError = ApiError.fromJson(json.decode(response.body));
        break;
      default:
        _apiResponse.ApiError = ApiError.fromJson(json.decode(response.body));
        break;
    }
  } on SocketException {
    _apiResponse.ApiError = ApiError(error: "Server error. Please retry");
  }
  return _apiResponse;
}