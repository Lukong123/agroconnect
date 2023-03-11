import 'package:flutter/material.dart';

void main() {
  runApp ( MaterialApp(
    home: Home()
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
