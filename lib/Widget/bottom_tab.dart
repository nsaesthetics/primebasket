import 'package:flutter/material.dart';
class BottomTab extends StatefulWidget {
  const BottomTab({Key? key}) : super(key: key);

  @override
  State<BottomTab> createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: const Color(0xff191960)
        ,items: const [
      BottomNavigationBarItem(icon: Icon(Icons.add_home, color: Colors.white,), label: "Account"),
      BottomNavigationBarItem(icon: Icon(Icons.list, color: Colors.white,), label: "Account")
    ]);
  }
}

