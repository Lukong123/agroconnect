import 'package:agroconnect/Screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:agroconnect/screens/AuthScreens/login.dart';
import 'package:agroconnect/Screens/AuthScreens/register.dart';
import 'package:agroconnect/screens/signup.dart';
import 'package:agroconnect/screens/consumer_dashboard.dart';
import 'package:agroconnect/screens/supplier_dashboard.dart';
import 'package:agroconnect/screens/oder.dart';

void main() {
  runApp ( MaterialApp(
    initialRoute: '/',
    routes: {
      '/login': (context) => Login(),
      '/signup': (context) => Signup(),
      '/supply': (context) => Supplier(),
      '/consummer': (context) => Consumer(),
      '/': (context) => Order(),

    },
  ));

  void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Register(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
