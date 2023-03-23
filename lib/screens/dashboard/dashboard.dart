import 'dart:convert';

import 'package:agroconnect/Screens/dashboard/homePage.dart';
import 'package:agroconnect/Screens/dashboard/farm.dart';
import 'package:agroconnect/Screens/dashboard/store.dart';
import 'package:agroconnect/Screens/dashboard/profile.dart';
import 'package:agroconnect/Screens/order_list.dart';
import 'package:agroconnect/Styles/colors.dart';
import 'package:agroconnect/Widgets/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';




class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  void _handlenavbarChange(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const Farm(),
    const Store(),
    const Profile(),
    const OrderList(),
  ];

  final storage = FlutterSecureStorage();

  void fetch() async{

    // retrieve token
    final token = await storage.read(key: 'token');
    Response response = await get(
      Uri.parse("https://farmtome.herokuapp.com/api/v1/auth/register"),
      headers: {'Authorization': 'Bearer $token'},
    );
    if(response.statusCode==200){
      var data = jsonDecode(response.body.toString());
      print(data);
    }else{
      print("failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: Mybotombar(
        index: currentIndex,
        onTap: _handlenavbarChange,
      ),
      body: _pages[currentIndex],


    );
  }
}