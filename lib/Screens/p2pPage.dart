import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:primebasket/Widget/BottomTab.dart';
import 'package:primebasket/Widget/animatedText.dart';
import 'package:primebasket/Widget/appBar.dart';

class p2pTadingPage extends StatelessWidget {
  const p2pTadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      bottomNavigationBar: bottomTab(),
      body: ListView(
          children: [
            appBar(),
      buildAnimatedText(),
            SizedBox(height: size.height*0.03,),

            Center(
              child: Material(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xff191970),
                child: Padding(
                  padding:EdgeInsets.symmetric(horizontal: size.width*0.02, vertical: size.height*0.01),
                  child: Text("P2P REGISTRATION", style: TextStyle(fontSize: size.width*0.055,color: Colors.white),),
                ),
              ),
            ),
            SizedBox(height: size.width*0.02,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width*0.02, vertical: size.height*0.03),
              child: Material(
                elevation: 3,
                child: TextField(
                  style: TextStyle(fontSize: size.width*0.06),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width:3, color: Colors.green
                      ),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: size.width*0.03, vertical: size.height*0.03),
                    labelText: "Wallet Address:",
                  ),
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width*0.02, vertical: size.height*0.03),
              child: Material(
                elevation: 3,
                child: TextField(
                  onTap: (){
                    showCurrencyPicker(
                      context: context,
                      showFlag: true,
                      showSearchField: true,
                      showCurrencyName: true,
                      showCurrencyCode: true,
                      onSelect: (Currency currency) {
                        print('Select currency: ${currency.name}');
                      },
                      favorite: ['SEK'],
                    );
                  },
                  style: TextStyle(fontSize: size.width*0.06),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width:3, color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: size.width*0.03, vertical: size.height*0.03),
                    labelText: "Select Currency:",
                  ),
                ),
              ),
            ),

        Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width*0.02, vertical: size.height*0.03),
            child: Material(
              elevation: 3,
              child: TextField(
                style: TextStyle(fontSize: size.width*0.06),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width:3, color: Colors.green
                      ),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: size.width*0.03, vertical: size.height*0.03),
                  hintText: "Account Number:",
                ),
              ),
            ),
),
            Row(
              children: [
                SizedBox(width: size.width*0.05,),
                Icon(Icons.add_alert_outlined,color: Color(0xff191970),size: size.width*0.07,),
                Text("Add", style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.06,color: Color(0xff191970)),)
              ],
            ),
            SizedBox(height:size.height*0.03),
            Text("Do You have binacne or metamask wallet?", style: TextStyle(fontSize: size.width*0.05, fontWeight: FontWeight.w700),),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width*0.35),
              child: MaterialButton(onPressed: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation: 30,
                  color: Colors.amber,
              child: Text("Submit",style: TextStyle(fontSize: size.width*0.06, color: Colors.white),),),
            )

          ]),
    ));
  }
}
