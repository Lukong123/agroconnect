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


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Login(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
 
