import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:agroconnect/auth_logic/api_response.dart';
import 'package:agroconnect/services/api.dart';
import 'package:agroconnect/auth_logic/user.dart';
import 'dart:convert';

class ApiError {
  late String _error;

    ApiError({required String  error}) {
    this._error = error;
  }

  String get error => _error;
  set error(String error) => _error = error;

  ApiError.fromJson(Map<String, dynamic> json) {
    _error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this._error;
    return data;
  }
}