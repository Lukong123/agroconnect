import 'package:agroconnect/Styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'dart:math';



class CreateStore extends StatefulWidget {
  const CreateStore({Key? key}) : super(key: key);
 
  @override
  State<CreateStore> createState() => _CreateStoreState();
}
 
class _CreateStoreState extends State<CreateStore> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checkvalue = false;
   File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }
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
          "Create Store",
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
                child: Center(child: Text("Create Your  Store",
                style: TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.bold),)),

                ),
                ),
                SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                          child: const Text('Store Name'),
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
                                hintText: 'Enter Store Name',
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
                  pickImage();
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
                  pickImageC();
                }
            ),
            SizedBox(height: 20,),
            image != null ? Image.file(image!): Text("No image selected"),
            
                        ////stop
          SizedBox(height: 80,),
            SizedBox(
                            height: 40,
                            width: 40,
                            // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              child: const Text('Create Store',
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