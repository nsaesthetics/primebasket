import 'package:flutter/material.dart';
import 'package:primebasket/Widget/animated_text.dart';
import 'package:primebasket/Widget/app_bar.dart';

class BinancePage extends StatelessWidget {
  const BinancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      body: ListView(
        children: [
          const AppBarWidget(),
          const BuildAnimatedText(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height*0.03),
            child: Center(
              child: Image.asset('images/bsc.png', height: size.width*0.3),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/tether.png', height: size.width*0.1),
              Text(" Tether (USDT)", style: TextStyle(fontWeight: FontWeight.w700,fontSize: size.width*0.06, color: Colors.blueGrey),)
            ],
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: size.width*0.02,vertical: size.height*0.02),
            child: Text("1.  Only use USDT", style: TextStyle(fontSize: size.width*0.07, fontWeight: FontWeight.bold),),
          ),

          Padding(
            padding:EdgeInsets.symmetric(horizontal: size.width*0.02,vertical: size.height*0.02),
            child: Text("2.  Only use BEP20  (Binance Smart Chain).", style: TextStyle(fontSize: size.width*0.07, fontWeight: FontWeight.bold),),
          ),

          Padding(
            padding:EdgeInsets.symmetric(horizontal: size.width*0.02,vertical: size.height*0.02),
            child: Text("3.  You can send directly via binance or metamask.", style: TextStyle(fontSize: size.width*0.07, fontWeight: FontWeight.bold),),
          ),

          //Implement QR CODE SCANNER HERE.

          const Text("After completing your transaction, please input your transaction hash into the box:",),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width*0.02, vertical: size.height*0.03),
            child: Material(
              elevation: 3,
              child: TextField(
                style: TextStyle(fontSize: size.width*0.06),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width:3
                      ),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: size.width*0.25, vertical: size.height*0.03),
                  hintText:'Transaction Hash'
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width*0.02),
            child: MaterialButton(onPressed: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation: 30,
              color: Colors.amber,
              child: Text("Submit",style: TextStyle(fontSize: size.width*0.065, color: Colors.white),),),
          )



        ],
      ),
    ));
  }
}
