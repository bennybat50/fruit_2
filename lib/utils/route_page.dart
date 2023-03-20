import 'package:flutter/material.dart';

class RoutePage {
  nextRoute(context, page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  clearPages(context, page) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => page), ModalRoute.withName(''));
  }
}
