import 'package:flutter/material.dart';
import 'package:primebasket/Widget/bottom_tab.dart';
import 'package:primebasket/Widget/animated_text.dart';
import 'package:primebasket/Widget/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomTab(),
        backgroundColor: Colors.purpleAccent,
        body: ListView(
          children: [
            const AppBarWidget(),
            const BuildAnimatedText(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/goldcard.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Actual Balance", style: TextStyle(fontSize: size.width*0.06),),
                            Material(color: Colors.green,
                            child: Text("\$196.09", style: TextStyle(color: Colors.white,fontSize: size.width*0.06),),)
                          ],
                        ),
                        SizedBox(
                          height: size.height*0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Est Earnings", style: TextStyle(fontSize: size.width*0.06),),
                            Material(color: Colors.green,
                              child: Text("\$23.09", style: TextStyle(color: Colors.white,fontSize: size.width*0.06),),)
                          ],
                        ),

                        SizedBox(
                          height: size.height*0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Virtual Balance", style: TextStyle(fontSize: size.width*0.06),),
                            Material(color: Colors.green,
                              child: Text("\$80.00", style: TextStyle( color: Colors.white,fontSize: size.width*0.06),),)
                          ],
                        ),

                        SizedBox(
                          height: size.height*0.01,
                        ),
                        Text("Tier 8", style: TextStyle(fontSize: size.width*0.06),),

                        SizedBox(
                          height: size.height*0.01,
                        ),
                        Text("Series 1", style: TextStyle(fontSize: size.width*0.06),),

                      ],
                    ),
                  ) /* add child content here */,
                ),
              ),
            ),

            SizedBox(height: size.height*0.03,),

            HomeButtons(size: size, color: Colors.green, fontColor: Colors.white, text: "Top Up", ontap: (){
              Navigator.pushNamed(context, '/topup');
            },),
            HomeButtons(size: size, color: Colors.blue, fontColor: Colors.white, text: "Withdraw", ontap: (){
              Navigator.pushNamed(context, '/topup');
            },),

            HomeButtons(size: size, color: Colors.white, fontColor: Colors.black, text: "P2P Trading", ontap: (){
              Navigator.pushNamed(context, '/p2p');
            },),
            HomeButtons(size: size, color: Colors.white, fontColor: Colors.black, text: "Share", ontap: (){
              Navigator.pushNamed(context, '/share');
            },),
            HomeButtons(size: size, color: Colors.white, fontColor: Colors.black, text: "Order Fulfillment History", ontap: (){
              Navigator.pushNamed(context, '/orderfulfill');
            },),
            HomeButtons(size: size, color: Colors.white, fontColor: Colors.black, text: "Deposit/Withdrawal History", ontap: (){
              Navigator.pushNamed(context, '/withdrawal');
            },),
            HomeButtons(size: size, color: Colors.white, fontColor: Colors.black, text: "Tier System", ontap: (){
              Navigator.pushNamed(context, '/topup');
            },),
            HomeButtons(size: size, color: Colors.white, fontColor: Colors.black, text: "FAQs", ontap: (){
              Navigator.pushNamed(context, '/topup');
            },),
            HomeButtons(size: size, color: Colors.white, fontColor: Colors.black, text: "Change Password", ontap: (){
              Navigator.pushNamed(context, '/topup');
            },),
            HomeButtons(size: size, color: Colors.white, fontColor: Colors.black, text: "Contact Us", ontap: (){
              Navigator.pushNamed(context, '/topup');
            },),
            HomeButtons(size: size, color: Colors.white, fontColor: Colors.black, text: "Log out", ontap: (){
              Navigator.pushNamed(context, '/topup');
            },),





          ],
        ),
      ),
    );
  }
}

class HomeButtons extends StatelessWidget {
  const HomeButtons({
    Key? key,
    required this.size,
    required this.color,
    required this.fontColor,
    required this.text,
    required this.ontap
  }) : super(key: key);

  final Size size;
  final Color color;
  final Color fontColor;
  final String text;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width*0.02, vertical: size.height*0.006),
      child: MaterialButton(onPressed: ontap,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: size.height*0.008),
          child: Text(text, style: TextStyle(fontSize: size.width*0.07, color: fontColor),),
        ),),
    );
  }
}
