import 'package:flutter/material.dart';
import 'package:agroconnect/Styles/colors.dart';


class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        leading: Icon(
          Icons.person,
          color: white,
        ),
        title: Text(
          "Order List",
          textAlign: TextAlign.left,
          style:TextStyle(
            color: white,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            letterSpacing: 0.3,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.notifications_active_outlined,
              color: primaryColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 8,),
            SizedBox(height: 20,),
            ListView.builder(
    padding: EdgeInsets.zero,
    primary: false,
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    itemCount: 5,  // carditems.length
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(6, 8, 6, 0),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: lightgrey,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x320E151B),
                offset: Offset(0, 1),
              )
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
            child: Row(
              children: [

                Icon(Icons.person_outline,
                size: 30,),
                SizedBox(width: 20,),
                Text( 'Item: Flour',
                 //cartItems[index].name,
                 ),
                SizedBox(width: 20,),
                Text("Quantity: 55"),
                SizedBox(width: 20,),
                IconButton(onPressed: () {}, 
                icon: Icon(Icons.chevron_right_outlined
                )),
              ],
                          
            ),
          ),
        ),
      );
    })])));
  }
}