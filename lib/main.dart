import 'package:flutter/material.dart';
import 'package:agroconnect/screens/AuthScreens/login.dart';
import 'package:agroconnect/screens/signup.dart';
import 'package:agroconnect/screens/consumer_dashboard.dart';
import 'package:agroconnect/screens/supplier_dashboard.dart';

void main() {
  runApp ( MaterialApp(
    initialRoute: '/',
    routes: {
      '/signup': (context) => Signup(),
      '/supply': (context) => Supplier(),
      '/consummer': (context) => Consumer()

    },
  ));

}
