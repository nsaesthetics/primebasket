
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width*0.02),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('images/logo.png', width: size.width*0.15,),
          Image.asset('images/Logotext.png', width: size.width*0.6,),
          GestureDetector(onTap: (){Navigator.pushNamed(context, '/notif');}, child: Image.asset('images/bell.png',
            color: Colors.red,height: size.height*0.08,))
        ],
      ),
    );
  }
}
