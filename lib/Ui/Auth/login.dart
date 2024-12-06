import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:template_for_project/Custom_widgets/rounded_button.dart';
import 'package:template_for_project/Ui/Auth/signup.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  //FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController emailControlller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  bool loading = false;

  void login() {
    // _auth
    //     .signInWithEmailAndPassword(
    //         email: emailControlller.text.toString(),
    //         password: passwordController.text.toString())
    //     .then((value) {
    //   utils().showToast(value.user!.email.toString());
    // }).onError((error, stackTrace) {
    //   utils().showToast(error.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Login Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  const SizedBox(
                    height: 20,
                  ),
                  Rounded_button(
                      loading: loading,
                      name: 'Login ',
                      ontap: () {
                        if (_formkey.currentState!.validate()) {
                          login();
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (BuildContext context) {
                          //   return Posts();
                          // }));
                        }
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don t have an Account '),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Signup_screen()));
                          },
                          child: Text(
                            'SignUp',
                            style: TextStyle(color: Colors.blue),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => Login_with_phone_num()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black)),
                        child: Center(
                            child: Text(
                          'login With Phone Number',
                          style: TextStyle(color: Colors.black),
                        )),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
