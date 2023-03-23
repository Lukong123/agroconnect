

import 'dart:convert';

import 'package:agroconnect/Screens/AuthScreens/register.dart';
import 'package:agroconnect/Styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:agroconnect/main.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
 
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checkvalue = false;

  final storage = FlutterSecureStorage();



  void login(String email, password) async {
    try {
      Response response = await post(
          Uri.parse("https://farmtome.herokuapp.com/api/v1/auth/login"),
          body: {
            'email': email,
            'password': password,
          }
      );
      if(response.statusCode==200){
        var data = jsonDecode(response.body.toString());
        print("account logged in successfully");

        final token = data['token'];
        await storage.write(key: 'token', value: token);
        Navigator.pushReplacementNamed(context, '/farm');
      }else{
        print("failed");
      }
    } catch(e){
      print(e.toString());
  }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Container(
              color: Colors.white,
              child: Row(
                children: [
            SizedBox(height:50),

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 60, 5, 5),
              child: Text("Login",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                ),
            ),
                ],
              )
            ),
           
            Form(
              child: Container(
                width: 360,
                height: (MediaQuery.of(context).size.height),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(5),
                      child:  ListView(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                            child: const Text('Email'),
                          ),
                          SizedBox(
                            height: 55,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: TextFormField(
                                obscureText: false,
                                controller: emailController,
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                  hintText: 'Enter Email',
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
                              child: TextFormField(
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
                          Row(
                                  children: <Widget>[
                                    SizedBox(
                                      
                                      width: 1,
                                    ),
                                     Checkbox(
                                      value: this.checkvalue,
          
                                      activeColor: primaryColor,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          this.checkvalue = value!;
                                        });
                                      },
                                    ),
                                    //SizedBox
                                    Text(
                                      'keep me signed In',
                                      style: TextStyle(fontSize: 12.0),
                                    ), //Text
                                    SizedBox(width: 100), 
                                    //SizedBox
                                    Text('Forgot Password?',
                                    style: TextStyle(color: primaryColor,
                                    fontSize: 12.0, 
                                    ))
                                  ], //<Widget>[]
                                ),
                          SizedBox(height: 20,),
                          
          
              SizedBox(
                              height: 40,
                              width: 40,
                              // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: ElevatedButton(
                                child: const Text('Login',
                                style: TextStyle(
                                  fontSize: 17,
                                ),),
                                onPressed: () {
                                  login(emailController.text.toString(), passwordController.text.toString());
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  
                                ),
                              )
                          ),
                          SizedBox(height: 200,),
                          
              Padding(
                padding: EdgeInsets.fromLTRB(50, 5, 10, 5),
                child: Row(
                  children: [
                    Text("Don't yet have an account?",
                    style: TextStyle(fontSize: 12.0),),
                     SizedBox(width: 8), 
                                      //SizedBox
                                      InkWell(
                                        child: Text('Create an Account',
                                        style: TextStyle(color: primaryColor,
                                        fontSize: 12.0, 
                                        )),
                                          onTap: () {
                                        Navigator.push(context,
                                         MaterialPageRoute(builder: (context) => const Register())
                                         );
                                      } ,
                                      )
                  ],
                ),
              )
           
                  ],
                  ),
                  )
                  
                  ),
            ),
                ], ),
      ),
    );
  }
}