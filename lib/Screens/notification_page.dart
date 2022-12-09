import 'package:flutter/material.dart';
import 'package:primebasket/Widget/bottom_tab.dart';
import 'package:primebasket/Widget/animated_text.dart';
import 'package:primebasket/Widget/app_bar.dart';

class NotifPage extends StatelessWidget {
  const NotifPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    int order =220;
    final date = DateTime.now();
    return Scaffold(
      bottomNavigationBar: const BottomTab(),
      body: SafeArea(
        child: ListView(
          children: [const AppBarWidget(),

            const BuildAnimatedText(),
            Notification(order: order, size: size, date: date),
            Notification(order: order, size: size, date: date),
            Notification(order: order, size: size, date: date),
            Notification(order: order, size: size, date: date),
            Notification(order: order, size: size, date: date),
            Notification(order: order, size: size, date: date),
            Notification(order: order, size: size, date: date),


          ],
        ),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  const Notification({
    Key? key,
    required this.order,
    required this.size,
    required this.date,
  }) : super(key: key);

  final int order;
  final Size size;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width*0.03, vertical: size.height*0.02),
      child: Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$order orders have been added. Start fulfilling them now.", style: TextStyle(fontSize: size.width*0.05, fontWeight: FontWeight.bold),),
            Text("$date", style: TextStyle(fontSize: size.width*0.04,fontWeight: FontWeight.bold, color: Colors.blueGrey),)
          ],
        ),
      ),
    );
  }
}
