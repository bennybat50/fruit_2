import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      "Login",
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
                        labelText: 'Email Address',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(letterSpacing: 0.1),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 28.0, vertical: 48),
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      color: Colors.green,
                      width: 200,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "Do you have an account? ",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
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
