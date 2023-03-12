import 'package:agroconnect/Styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:agroconnect/Styles/colors.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
 
  @override
  State<Register> createState() => _RegisterState();
}
 
class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checkvalue = false;
 
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
            SizedBox(height:10),

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
                              controller: passwordController,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter your full name',
                              ),
                            ),
                          ),
                        ),

                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                          child: const Text('User Name'),
                        ),
                        SizedBox(
                          height: 55,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              obscureText: false,
                              controller: passwordController,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter your username',
                              ),
                            ),
                          ),
                        ),
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
                              controller: passwordController,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter email address',
                              ),
                            ),
                          ),
                        ),

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
                              controller: passwordController,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Enter Phone Number',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                          child: const Text('Account Type'),
                        ),
                        SizedBox(
                          height: 55,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              obscureText: false,
                              controller: passwordController,
                              decoration:  InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                hintText: 'Account Type',
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
                              controller: passwordController,
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
                              child: const Text('Register',
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
                        SizedBox(height: 20,),
                        
            Padding(
              padding: EdgeInsets.fromLTRB(50, 5, 10, 5),
              child: Row(
                children: [
                  Text("Already have an account?",
                  style: TextStyle(fontSize: 12.0),),
                   SizedBox(width: 8), 
                                    //SizedBox
                                    Text('Login',
                                    style: TextStyle(color: primaryColor,
                                    fontSize: 12.0, 
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