import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:primebasket/Widget/BottomTab.dart';
import 'package:primebasket/Widget/animatedText.dart';
import 'package:primebasket/Widget/appBar.dart';

class topUpPage extends StatelessWidget {
  const topUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: bottomTab(),
      body: SafeArea(
        child: ListView(
          children: [appBar(),
            buildAnimatedText(),

            Padding(padding: EdgeInsets.symmetric(vertical: size.height*0.02,horizontal: size.width*0.15)
            ,
              child: MaterialButton(onPressed: (){
                Navigator.pushNamed(context, '/topup');
              },
                color: Color(0xff191970),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height*0.008),
                  child: Text("TOP UP", style: TextStyle(fontSize: size.width*0.07, color: Colors.white),),
                ),),
            ),
            SizedBox(height: size.height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Actual Balance", style: TextStyle(fontSize: size.width*0.05),),
                SizedBox(width: size.width*0.1,),
                Text("\$196.09", style: TextStyle(color: Colors.green,fontSize: size.width*0.08, fontWeight: FontWeight.w700),)
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Est Balance", style: TextStyle(fontSize: size.width*0.05),),
                SizedBox(width: size.width*0.1,),
                Text("\$ 0.00", style: TextStyle(color: Colors.black,fontSize: size.width*0.06),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Virtual Balance", style: TextStyle(fontSize: size.width*0.05),),
                SizedBox(width: size.width*0.1,),
                Text("\$ 3", style: TextStyle(color: Colors.black,fontSize: size.width*0.06),)
              ],
            ),

            Padding(
              padding:EdgeInsets.symmetric(horizontal: size.width*0.1, vertical: size.height*0.02),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/binance');
                },
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('images/bsc.png', height: size.width*0.3,),
                ),
              ),
            ),

            Padding(
              padding:EdgeInsets.symmetric(horizontal: size.width*0.1, vertical: size.height*0.02),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/mobiwallet');
                },
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('images/mobiwallet.png')
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
