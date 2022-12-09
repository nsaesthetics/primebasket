import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../login_screen_widgets/login_screen_button_widget.dart';

class LoginScreenUI extends StatelessWidget {
  const LoginScreenUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1, vertical: size.height * 0.03),
              child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 3,
                child: TextField(
                  style: TextStyle(fontSize: size.width * 0.06),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.01),
                    labelText: "Email:",
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1, vertical: size.height * 0.03),
              child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 3,
                child: TextField(
                  style: TextStyle(fontSize: size.width * 0.06),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.01),
                    labelText: "Password:",
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1, vertical: size.height * 0.03),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.amber,
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.07),
                  )),
                ),
              ),
            ),
            Text(
              "OR",
              style: TextStyle(
                  fontSize: size.width * 0.07, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1, vertical: size.height * 0.03),
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.white,
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('images/google.svg',
                        width: MediaQuery.of(context).size.width * 0.07),
                    Text(
                      "Sign in with Google",
                      style: TextStyle(
                          fontSize: size.width * 0.06,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            Text(
              "New User?",
              style: TextStyle(
                  fontSize: size.width * 0.06, fontWeight: FontWeight.bold),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //       horizontal: size.width * 0.1, vertical: size.height * 0.03),
            //   child: Container(
            //     width: MediaQuery.of(context).size.width * 0.8,
            //     height: MediaQuery.of(context).size.width * 0.1,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(15.0),
            //       color: Colors.amber,
            //     ),
            //     child: MaterialButton(
            //       onPressed: () {},
            //       child: Center(
            //           child: Text(
            //         "Sign Up",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //             fontSize: size.width * 0.07),
            //       )),
            //     ),
            //   ),
            // ),
            LoginScreenButtonWidget(size: size)
          ],
        ),
      ),
    );
  }
}
