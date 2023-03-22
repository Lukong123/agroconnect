import 'package:agroconnect/Styles/colors.dart';
import 'package:flutter/material.dart';


import 'package:flutter/material.dart';
// import 'Styles/colors.dart';

class CreateFarm extends StatefulWidget {
  const CreateFarm({Key? key}) : super(key: key);
 
  @override
  State<CreateFarm> createState() => _CreateFarmState();
}
 
class _CreateFarmState extends State<CreateFarm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checkvalue = false;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        leading: Icon(
          Icons.person,
          color: white,
        ),
        title: Text(
          "Create Farm",
          textAlign: TextAlign.left,
          style:TextStyle(
            color: white,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.normal,
            fontSize: 16,
            letterSpacing: 0.3,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.notifications_active_outlined,
              color: white,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
              width: 360,
              height: (MediaQuery.of(context).size.height),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: ListView(
                      children: <Widget>[
                          Card(
                elevation: 50,
                // shadowColor: black,
                color: Colors.green[500],
                
                child: SizedBox(
                  height: 50,
                child: Center(child: Text("Create Your  Farm",
                style: TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.bold),)),

                ),
                ),
                SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                          child: const Text('Farm Name'),
                        ),
                        SizedBox(
                          height: 55,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              obscureText: false,
                              controller: nameController,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Farm Name',
                              ),
                            ),
                          ),
                        ),
          
                        SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: const Text('Location'),
                        ),
                        SizedBox(
                          height: 55,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              obscureText: true,
                              controller:nameController,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter Location',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                          child: const Text('Image'),
                        ),
                      ///start
                       MaterialButton(
                color: Colors.greenAccent,
                child: const Text(
                    "Pick Image from Gallery",
                  style: TextStyle(
                    color: Colors.white70, fontWeight: FontWeight.bold
                  )
                ),
                onPressed: () {
                }
            ),
            MaterialButton(
                color: Colors.grey[500],
                child: const Text(
                    "Pick Image from Camera",
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.bold
                    )
                ),
                onPressed: () {
                }
            ),
                        ////stop
          SizedBox(height: 80,),
            SizedBox(
                            height: 40,
                            width: 40,
                            // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              child: const Text('Create Farm',
                              style: TextStyle(
                                fontSize: 17,
                              ),),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                
                              ),
                            )
                        ),
                        SizedBox(height: 200,),
                        
         
           
                ],
                ),
                )
                
                ),
                ), );
    
  }
}