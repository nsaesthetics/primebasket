
import 'package:flutter/material.dart';

class LoginScreenButtonWidget extends StatelessWidget {
  const LoginScreenButtonWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width*0.5,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor:Colors.amber,
          ),
          child: Text(
            "Sign Up",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.07),
          )),
    );
  }
}
