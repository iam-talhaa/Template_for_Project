import 'package:flutter/material.dart';
import 'package:template_for_project/Ui/Auth/signup.dart';

void main() {
  runApp(Template());
}

class Template extends StatefulWidget {
  const Template({super.key});

  @override
  State<Template> createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signup_screen(),
    );
  }
}
