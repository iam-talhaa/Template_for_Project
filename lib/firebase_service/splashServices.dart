import 'dart:async';
import 'dart:js';

import 'package:flutter/material.dart';

class SplashServices {
  void Login(BuildContext context) {
    // final _auth = FirebaseAuth.instance;
    // final user = _auth.currentUser;

    if (user != null) {
      Timer(Duration(seconds: 3), () {
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (BuildContext context) => Firestore_post_Screen()));
      });
    } else {
      Timer(Duration(seconds: 3), () {
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (BuildContext context) => Login_screen()));
      });
    }
  }
}
