import 'package:agroconnect/Styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:agroconnect/auth_logic/api_response.dart';
import 'package:agroconnect/auth_logic/api_error.dart';
import 'package:agroconnect/auth_logic/user.dart';
import 'package:agroconnect/services/api.dart';


import 'package:flutter/material.dart';
// import 'Styles/colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
 
  @override
  State<Login> createState() => _LoginState();
}
 
class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? _username = "";
  String? _password = "";
  final _apiResponse;
  bool checkvalue = false;




  void _handleSubmitted() async {
    final FormState? form = _formKey.currentState;
    if (form!.validate()) {
      showInSnackBar('Please fix the errors in red before submitting.');
    } else {
      form.save();
      _apiResponse = await authenticateUser(_username!, _password!);
      if ((_apiResponse.ApiError as ApiError) == null) {
        _saveAndRedirectToHome();
      } else {
        showInSnackBar((_apiResponse.ApiError as ApiError).error);
      }
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
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
                            padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                            child: const Text('Email Address'),
                          ),
                          SizedBox(
                            height: 55,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: TextFormField(
                                key: Key("_username"),
                                obscureText: false,
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                  hintText: 'Enter email address',
                                ),
                                onSaved: (String? value) {
                                  _username = value;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Username is required';
                                  }
                                  return null;
                                },


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
                                key: const Key("_password"),
                                obscureText: true,
                                controller: passwordController,
                                decoration:  InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                  hintText: 'Enter password',
                                ),
                                onSaved: (String? value) {
                                  _password = value;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Username is required';
                                  }
                                  return null;
                                },
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

              Padding(
                padding: EdgeInsets.fromLTRB(50, 5, 10, 5),
                child: Row(
                  children: [
                    Text("Don't yet have an account?",
                    style: TextStyle(fontSize: 12.0),),
                     SizedBox(width: 8),
                                      //SizedBox
                                      Text('Create an Account',
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
      ),
    );
  }

  void showInSnackBar(String s) {}
}
