import 'package:flutter/material.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  //SplashServices _splashServices = SplashServices();
  void initState() {
    // TODO: implement initState
    super.initState();
    // _splashServices.Login(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Splash Screen ',
              style: TextStyle(fontSize: 40, color: Colors.deepPurple),
            ),
          )
        ],
      ),
    );
  }
}
