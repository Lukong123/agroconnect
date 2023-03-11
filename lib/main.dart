import 'package:flutter/material.dart';
import 'package:agroconnect/screens/login.dart';
import 'package:agroconnect/screens/signup.dart';
import 'package:agroconnect/screens/consumer_dashboard.dart';
import 'package:agroconnect/screens/supplier_dashboard.dart';

void main() {
  runApp ( MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Login(),
      '/signup': (context) => Signup(),
      '/supply': (context) => Supplier(),
      '/consummer': (context) => Consumer()

    },
  ));

}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" agroconnect @ 2023"),
        centerTitle: true,
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
      body: const Center(
        child: Text(" test to see if i work please"),
      ),
    );
  }
}
// to see the wireframe for each widget.
