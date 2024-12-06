import 'package:flutter/material.dart';

import 'package:template_for_project/Custom_widgets/rounded_button.dart';
import 'package:template_for_project/Ui/Auth/login.dart';

class Signup_screen extends StatefulWidget {
  const Signup_screen({super.key});

  @override
  State<Signup_screen> createState() => _Signup_screenState();
}

class _Signup_screenState extends State<Signup_screen> {
  bool loading = false;
  TextEditingController emailControlller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  //FirebaseAuth _auth = FirebaseAuth.instance;
  void signUp() {
    setState(() {
      loading = true;
    });
    // _auth
    //     .createUserWithEmailAndPassword(
    //         email: emailControlller.text.toString(),
    //         password: passwordController.text.toString())
    //     .then((value) {
    //   setState(() {
    //     loading = false;
    //   });
    // }).onError((error, stackTrace) {
    //   setState(() {
    //     loading = false;
    //   });
    //   utils().showToast(error.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'SignUp Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: FlutterLogo(
                      size: 100,
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Some Text';
                        }
                      },
                      controller: emailControlller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Some Text';
                        }
                      },
                      controller: passwordController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          hintText: "PassWord",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Rounded_button(
                      loading: loading,
                      name: 'SignUp ',
                      ontap: () {
                        if (_formkey.currentState!.validate()) {
                          signUp();
                        }
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an  Account '),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Login_screen()));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.blue),
                          ))
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
