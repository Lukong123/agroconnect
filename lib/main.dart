import 'package:agroconnect/Screens/create_store.dart';
import 'package:agroconnect/Screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:agroconnect/screens/AuthScreens/login.dart';
import 'package:agroconnect/Screens/AuthScreens/register.dart';
import 'package:agroconnect/screens/upload.dart';
import 'package:agroconnect/screens/oder.dart';
import 'package:agroconnect/screens/order_food.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/login': (context) => Login(),
      '/order': (context) => Order(),
      '/orderfood': (context) => OrderFood(),
      '/upload': (context) => UploadFood(),
      '/': (context) => Register(),
      '/dashboard': (context) => Dashboard(),


    },
  ));
}