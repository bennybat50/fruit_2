import 'dart:async';

import 'package:flutter/material.dart';

import 'database_repo/database_repository.dart';
import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    initDb();
    Timer(Duration(seconds: 5), () {
      //Move to another page
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          "Fruits",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 70,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }

  void initDb() async {
    await DatabaseRepository.instance.todoDatabase;
  }
}
