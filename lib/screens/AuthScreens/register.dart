import 'package:agroconnect/Styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:agroconnect/Styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
 
  @override
  State<Register> createState() => _RegisterState();
}
 
class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  bool checkvalue = false;
  var message = "";



  void register(String name,String email, String location, String phone, password, confirm) async{

    if(password == confirm){
      try{
        Response response = await post(
          Uri.parse("https://farmtome.herokuapp.com/api/v1/auth/register"),
          body: {
            'name': name,
            'phone': phone,
            'email': email,
            'password': password,
            'location': location,
          }
        );
        if(response.statusCode==200){
          print("posted");
        }else{
          print("failed");
        }

      }catch(e){
        print(e.toString());
      }

    }else{
     print("Password Mismatched");
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Row(
                children: [
            SizedBox(height:100),

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text("Create Account",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                ),
            ),
                ],
              )
            ),
           
            Container(
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
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 1, 10, 5),
                          child: const Text('Full Name'),
                        ),
                        SizedBox(
                          height: 55,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                            child: TextField(
                              obscureText: false,
                              controller: nameController,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter your full name',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),


                        
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                          child: const Text('Email Address'),
                        ),
                        SizedBox(
                          height: 55,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              obscureText: false,
                              controller: emailController,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter email address',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),

                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                          child: const Text('location'),
                        ),
                        SizedBox(
                          height: 55,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              obscureText: false,
                              controller: locationController,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter location',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),


                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                          child: const Text('Phone Number'),
                        ),
                        SizedBox(
                          height: 55,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              obscureText: false,
                              controller: phoneController,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter Phone Number',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: const Text('Password'),
                        ),
                        SizedBox(
                          height: 55,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              obscureText: true,
                              controller: passwordController,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter password',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),


                         Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: const Text('Confirm Password'),
                        ),
                        SizedBox(
                          height: 55,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              obscureText: true,
                              controller: confirmController,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Confirm password',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),                        
          
            SizedBox(
                            height: 40,
                            width: 40,
                            // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              child: const Text('Create Account',
                              style: TextStyle(
                                fontSize: 17,
                              ),),
                              onPressed: () {
                                register(
                                  nameController.text.toString(),
                                  emailController.text.toString(),
                                  locationController.text.toString(),
                                  phoneController.text.toString(),
                                  passwordController.text.toString(),
                                  confirmController.text.toString(),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                
                              ),
                            )
                        ),
                        SizedBox(height: 40,),
                        
            Padding(
              padding: EdgeInsets.fromLTRB(75, 5, 0, 5),
              child: Row(
                children: [
                  Text("Already have an account?",
                  style: TextStyle(fontSize: 15.0),),
                   SizedBox(width: 8), 
                                    //SizedBox
                                    Text('Login',
                                    style: TextStyle(color: primaryColor,
                                    fontSize: 15.0, 
                                    ))
                ],
              ),
            )
           
                ],
                ),
                )
                
                ),
                ], ),
      ),
    );
  }
}