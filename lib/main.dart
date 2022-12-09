import 'package:flutter/material.dart';
import 'package:primebasket/Screens/binance_page.dart';
import 'package:primebasket/Screens/home_page.dart';
import 'package:primebasket/Screens/login_screen/login_screen_ui/login_screen_ui.dart';
import 'package:primebasket/Screens/mobibank_wallet_page.dart';
import 'package:primebasket/Screens/notification_page.dart';
import 'package:primebasket/Screens/order_fulfullment_page.dart';
import 'package:primebasket/Screens/p2p_page.dart';
import 'package:primebasket/Screens/share_page.dart';
import 'package:primebasket/Screens/top_up_page.dart';
import 'package:primebasket/Screens/withrawal_deposit.dart';

void main() {
  runApp(MaterialApp(
    home: const LoginScreenUI(),
    routes: {
      //TODO: Correct Login
      'login': (context) => const LoginScreenUI(),
      '/home': (context) => const HomePage(),
      '/topup': (context) => const TopUpPage(),
      '/notif': (context) => const NotifPage(),
      '/orderfulfill': (context) => const OrderFulfulled(),
      '/withdrawal': (context) => const WithdrawalPage(),
      '/p2p': (context) => const P2pTadingPage(),
      '/share': (context) => const SharePage(),
      '/binance': (context) => const BinancePage(),
      '/mobiwallet': (context) => const MobileWallet(),
    },
  ));
}
