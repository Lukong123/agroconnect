// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:agroconnect/Styles/colors.dart';

class Mybotombar extends StatelessWidget {
  Mybotombar({
    Key? key,
   required this.onTap,
    required this.index,
  }) : super(key: key);
  final Function(int) onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: index,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: primaryColor,
      unselectedItemColor: grey,
      backgroundColor: white,
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home_filled),
        ),
        BottomNavigationBarItem(
          label: 'Farm',
          icon: Icon(Icons.agriculture),
        ),
        BottomNavigationBarItem(
          label: 'Store',
          icon: Icon(Icons.store),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}