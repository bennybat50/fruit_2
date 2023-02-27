
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';
import 'product_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage ({Key? key}) : super(key: key);

  @override
  State<SignupPage > createState() => _SignPageState();
}

class _SignPageState extends State<SignupPage > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   centerTitle: true,
      //   elevation: 0.0,
      //   leading: Icon(Icons.person),
      //   title: const Text(
      //     "Fruits",
      //     textAlign: TextAlign.center,
      //     style: TextStyle(color: Colors.white, fontSize: 40),
      //   ),
      // ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 70,
            ),
            child: Text(
              "Fruits",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
          ClipRRect(
            borderRadius:
                const BorderRadius.only(topRight: Radius.circular(70)),
            child: Container(
              color: Colors.white,
              height: 620,
              width: double.infinity,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 28.0),
                    child: Text(
                      "Sign Up",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(letterSpacing: 0.1),
                      ),
                    ),
                  ),

                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 27),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(letterSpacing: 0.1),
                      ),
                    ),
                  ),

                  





                  
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            autofocus: false,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(letterSpacing: 0.1),
                            ),
                          ),
                        ),
                        // IconButton(
                        //     onPressed: () {}, icon: Icon(Icons.remove_red_eye))
                      ],
                    ),
                  ),

                    Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 28.0, vertical: 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            autofocus: false,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Confirm Password',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(letterSpacing: 0.1),
                            ),
                          ),
                        ),
                        // IconButton(
                        //     onPressed: () {}, icon: Icon(Icons.remove_red_eye))
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      color: Colors.green,
                      width: 200,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: 'Log In',
                          style: TextStyle(color: Colors.black),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            }), 
                    ])),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
