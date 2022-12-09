import 'package:flutter/material.dart';
import 'package:primebasket/Widget/BottomTab.dart';
import 'package:primebasket/Widget/animatedText.dart';
import 'package:primebasket/Widget/appBar.dart';

class orderFulfulled extends StatelessWidget {
  const orderFulfulled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: bottomTab(),
      body: ListView(
        children: [
    appBar(),
          buildAnimatedText(),

          Center(
            child: Text("Order Fulfillment History", style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.07, color: Colors.black),),
          )


        ],
      ),
    );
  }
}
