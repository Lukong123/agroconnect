import 'package:flutter/material.dart';
import 'package:agroconnect/Styles/colors.dart';


class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.person,
          color: black,
        ),
        title: Text(
          "Welcome Andy",
          textAlign: TextAlign.left,
          style:TextStyle(
            color: black,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 15,
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
              SizedBox(
                          height: 75,
                          child: Container(
                            // width: 100,
                            height: 4,
                            padding: const EdgeInsets.fromLTRB(1, 1, 1, 0),
                            // IconButton(icon: null,),
                            child: TextField(
                              obscureText: false,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Search Here Farm Supplies',
                              prefixIcon: IconButton(onPressed: () {},
                               icon: Icon(Icons.search)),
                               
                              ),
                            ),
                          )),
           
            
            SizedBox(height: 20,),
            
            Row(
              children: [
                Card(
        shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
        clipBehavior: Clip.hardEdge,
        color: white,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            // debugPrint('Card tapped.');
          },
          child: SizedBox(
            height: 180,
            width: 150,
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                 
                 Image.asset('assets/images/wheelbarrow.jpg',
                //  width: 150,
                ),
                SizedBox(height: 15,),

                   Padding(
                     padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 8),
                     child: Text('Wheel Barrow',
                  style: TextStyle(
                      color: black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                  ),),
                   ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text('Quantity: 49',
                    style: TextStyle(
                      color: black,
                      fontSize: 10

                    ),),
                  ),
                SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text("Anne's Farm Market",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 10

                    ),),
                  )
                ],
              ),
            ),
          ),
      ),),
      SizedBox(width: 10,),
      Card(
        shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
        clipBehavior: Clip.hardEdge,
        color: white,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            // debugPrint('Card tapped.');
          },
          child: SizedBox(
            height: 180,
            width: 150,
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                 
                 Image.asset('assets/images/wheelbarrow.jpg',
                //  width: 150,
                ),
                SizedBox(height: 15,),

                   Padding(
                     padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 8),
                     child: Text('Wheel Barrow',
                  style: TextStyle(
                      color: black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                  ),),
                   ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text('Quantity: 49',
                    style: TextStyle(
                      color: black,
                      fontSize: 10

                    ),),
                  ),
                SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text("Anne's Farm Market",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 10

                    ),),
                  )
                ],
              ),
            ),
          ),
      ),)
              ],
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                Card(
        shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
        clipBehavior: Clip.hardEdge,
        color: white,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            // debugPrint('Card tapped.');
          },
          child: SizedBox(
            height: 180,
            width: 150,
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                 
                 Image.asset('assets/images/wheelbarrow.jpg',
                //  width: 150,
                ),
                SizedBox(height: 15,),

                   Padding(
                     padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 8),
                     child: Text('Wheel Barrow',
                  style: TextStyle(
                      color: black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                  ),),
                   ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text('Quantity: 49',
                    style: TextStyle(
                      color: black,
                      fontSize: 10

                    ),),
                  ),
                SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text("Anne's Farm Market",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 10

                    ),),
                  )
                ],
              ),
            ),
          ),
      ),),
      SizedBox(width: 10,),
      Card(
        shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
        clipBehavior: Clip.hardEdge,
        color: white,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            // debugPrint('Card tapped.');
          },
          child: SizedBox(
            height: 180,
            width: 150,
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                 
                 Image.asset('assets/images/wheelbarrow.jpg',
                //  width: 150,
                ),
                SizedBox(height: 15,),

                   Padding(
                     padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 8),
                     child: Text('Wheel Barrow',
                  style: TextStyle(
                      color: black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                  ),),
                   ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text('Quantity: 49',
                    style: TextStyle(
                      color: black,
                      fontSize: 10

                    ),),
                  ),
                SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                    child: Text("Anne's Farm Market",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 10

                    ),),
                  )
                ],
              ),
            ),
          ),
      ),),
              ],
            ),
            
          ],
        )
                   ,
        ),
 
      );
  }
}