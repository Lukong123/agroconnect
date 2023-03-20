import 'package:agroconnect/Screens/dashboard/dashboard.dart';
import 'package:agroconnect/Screens/order_list.dart';
import 'package:flutter/material.dart';
import 'package:agroconnect/Screens/AuthScreens/login.dart';
import 'package:agroconnect/Screens/AuthScreens/register.dart';
import 'package:agroconnect/Screens/myorders.dart';


  void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
 



  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: OrderList(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
