
import 'package:flutter/material.dart';
import 'package:agroconnect/custom/SearchBox.dart';
import 'package:agroconnect/custom/borderBox.dart';
import 'package:agroconnect/Widgets/bottombar.dart';

class OrderFood extends StatefulWidget {
  const OrderFood({Key? key}) : super(key: key);

  @override
  State<OrderFood> createState() => _OrderFoodState();
}

class _OrderFoodState extends State<OrderFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Mybotombar(
        index: 2,
        onTap: (index)=>{},
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(


          children: [
            Row(

              children: [
                const SizedBox(height: 150,),
                IconButton(
                  onPressed: ()=>{},
                  icon:const Icon(Icons.person),
                  iconSize: 50,
                  color: Colors.black,
                ),
                const SizedBox(width: 5.0,),
                const Text(" Hi, Andy",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
            Container(
              child: const SearchBox(
                hintText: "Search Food",
                child1: Icon(Icons.search),
              ),
            ),
            Container(
              height: 450,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.brown[100]
              ),
              child: Column(

                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/food.png'),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: const [
                        Text("Name:  "),
                        Text("some name of product here"),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: const [
                        Text("Description:  "),
                        Text("some item description here"),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: const [
                        Text("price:  "),
                        Text("500000FCFA"),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: const [
                        Text("Qty:  "),
                        Text("50"),

                      ],
                    ),
                  ),
                  // BorderBox(
                  //     width: 200,
                  //     height: 55,
                  //     child:
                  // )

                  TextButton(
                    onPressed: ()=>{},
                    child: const BorderBox(
                      width: 200,
                      height: 55,
                      child: Text('Place Order',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
