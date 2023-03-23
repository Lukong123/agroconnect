import 'package:flutter/material.dart';
import 'package:agroconnect/Styles/colors.dart';


class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
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
          "My Orders",
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
          height: 80,
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
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: 'ControllerImage',
                  transitionOnUserGestures: true,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset('assets/images/carrots.jpg', width: 40, height: 40,)
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Text(
                                'Flour', //cartItems[index].name,
                          style:TextStyle(
                                fontFamily: 'Poppins',
                              ),
                        ),
                      ),
                      Text(
                         '5000 FCFA' //'\$${cartItems[index].price}',
                        // style: AppTheme.of(context).bodyText2,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Text(
                          'Quanity: 20kg', //${cartItems[index].quantity}
                        
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.ac_unit_outlined,
                    color: Color(0xFFE86969),
                    size: 20,
                  ),
                  onPressed: () {
                  // Remove item
                  },
                ),
              ],
            ),
          ),
        ),
      );
    })])));
  }
}