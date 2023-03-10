import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_2/validator.dart';

import 'all_products.dart';
import 'signup_page.dart';

// import 'package:fruit_2/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  Validation validation = Validation();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
          Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: ClipRRect(
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
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        autofocus: false,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          border: const OutlineInputBorder(),
                          labelStyle: const TextStyle(letterSpacing: 0.1),
                        ),
                        validator: Validation().text,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28.0, vertical: 48),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              controller: passwordController,
                              autofocus: false,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                                labelStyle: TextStyle(letterSpacing: 0.1),
                              ),
                              validator: validatePassword,
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
                            onPressed: () {
                              validateForm();
                            },
                            // ignore: prefer_const_constructors
                            child: Text(
                              "Login",
                              style: const TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: RichText(
                          text: TextSpan(children: [
                        const TextSpan(
                            text: "Do you have an account? ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: 'Sign Up',
                            style: const TextStyle(color: Colors.black),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AllProducts()),
                                );
                              }),
                      ])),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  String? validatePassword(value) => Validation().password(value, 4);

  String? confirmPass(value) =>
      Validation().confirmPassword(value, passwordController.text, 4);

  validateForm() {
    if (formKey.currentState!.validate()) {
      print(emailController.text);
      print(passwordController.text);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignupPage()),
      );
    }
  }
}
