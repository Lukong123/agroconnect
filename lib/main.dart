import 'package:agroconnect/Screens/create_store.dart';
import 'package:agroconnect/Screens/dashboard/dashboard.dart';
import 'package:agroconnect/Screens/order_list.dart';
import 'package:flutter/material.dart';
import 'package:agroconnect/Screens/AuthScreens/login.dart';
import 'package:agroconnect/Screens/AuthScreens/register.dart';
import 'package:agroconnect/Screens/myorders.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Login(),
      '/order': (context) => Order(),
      '/orderfood': (context) => OrderFood(),
      '/upload': (context) => UploadFood(),
      '/farm': (context) => Farm(),
      '/register': (context) => Register(),
      '/dashboard': (context) => Dashboard(),



    },
  ));
}
