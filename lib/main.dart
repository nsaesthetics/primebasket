import 'package:flutter/material.dart';
import 'package:primebasket/Screens/binancePage.dart';
import 'package:primebasket/Screens/homePage.dart';
import 'package:primebasket/Screens/loginPage.dart';
import 'package:primebasket/Screens/mobibankWalletPage.dart';
import 'package:primebasket/Screens/notificationPage.dart';
import 'package:primebasket/Screens/orderFulfullmentPage.dart';
import 'package:primebasket/Screens/p2pPage.dart';
import 'package:primebasket/Screens/sharePage.dart';
import 'package:primebasket/Screens/topUpPage.dart';
import 'package:primebasket/Screens/withrawal_deposit.dart';

void main() {
  runApp(MaterialApp(
    home: loginPage(),

    routes:{
      'login':(context)=>loginPage(),
      '/home':(context)=>homePage(),
      '/topup':(context)=>topUpPage(),
      '/notif':(context)=> notifPage(),
      '/orderfulfill':(context)=>orderFulfulled(),
      '/withdrawal':(context)=>withdrawalPage(),
      '/p2p':(context)=> p2pTadingPage(),
      '/share':(context)=>sharePage(),
      '/binance':(context)=> binancePage(),
      '/mobiwallet':(context) => mobilWallet()

    },
  ));
}

