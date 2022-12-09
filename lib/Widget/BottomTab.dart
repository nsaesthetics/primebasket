import 'package:flutter/material.dart';
class bottomTab extends StatefulWidget {
  const bottomTab({Key? key}) : super(key: key);

  @override
  State<bottomTab> createState() => _bottomTabState();
}

class _bottomTabState extends State<bottomTab> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Color(0xff191960)
        ,items: [
      BottomNavigationBarItem(icon: Icon(Icons.add_home, color: Colors.white,), label: "Account"),
      BottomNavigationBarItem(icon: Icon(Icons.list, color: Colors.white,), label: "Account")
    ]);
  }
}

