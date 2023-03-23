import 'package:agroconnect/Screens/dashboard/homePage.dart';
import 'package:agroconnect/Screens/dashboard/farm.dart';
import 'package:agroconnect/Screens/dashboard/store.dart';
import 'package:agroconnect/Screens/dashboard/profile.dart';
import 'package:agroconnect/Screens/order_list.dart';
import 'package:agroconnect/Styles/colors.dart';
import 'package:agroconnect/Widgets/bottombar.dart';
import 'package:flutter/material.dart';




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