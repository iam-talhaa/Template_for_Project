import 'package:flutter/material.dart';

class Rounded_button extends StatelessWidget {
  final name;
  final VoidCallback ontap;
  final bool loading;
  const Rounded_button(
      {super.key,
      required this.name,
      required this.ontap,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
              child: loading
                  ? CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : Text(
                      name,
                      style: TextStyle(color: Colors.white),
                    )),
        ),
      ),
    );
  }
}
