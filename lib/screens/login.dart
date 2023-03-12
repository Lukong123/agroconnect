import 'package:flutter/material.dart';
import 'package:agroconnect/custom/borderBox.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                 const Padding(padding: EdgeInsets.fromLTRB(2, 30, 300, 2),
                 child: Text(
                   'LOGIN',
                   style: TextStyle(
                     color: Colors.black87,
                     fontSize: 20,
                     fontWeight: FontWeight.bold
                   ),
                 ),
                 ),
            SizedBox(height: 150,),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration:  InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Colors.green
                                  ),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                hintText: "enter username",
                                labelText: 'Name'
                              ),

                            ),
                            SizedBox(height: 30,),
                            TextFormField(
                              decoration:  InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Colors.green
                                  )
                                ),
                                  hintText: "enter password",
                                  labelText: 'password'
                              ),

                            ),
                            SizedBox(height: 50,),
                            const Padding(padding: EdgeInsets.all(1.0),
                              child: BorderBox(
                                width: 150,
                                height: 50,
                                child: Text("login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22
                                ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Dont have an account yet? ',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                                Text('SignUp',
                                style: TextStyle(
                                  color: Colors.green[900],
                                  fontSize: 20
                                ),
                                )
                              ],
                            ),
                        SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('forgot password',
                                  style: TextStyle(
                                      color: Colors.green[900],
                                      fontSize: 20
                                  ),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
            ],
        ),
          ),
      ),

    );
  }
}
