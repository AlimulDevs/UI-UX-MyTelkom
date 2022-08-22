import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_tsel/views/pages/category/riwayat_page.dart';

import 'package:my_tsel/views/pages/home_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int index = 0;
  List<Widget> listPage = [
    HomePage(),
    RiwayatBody(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPage[index],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          color: Colors.black,
          child: BottomNavigationBar(
            elevation: 0,
            iconSize: 35,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  activeIcon: Icon(Icons.home),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.schedule),
                  activeIcon: Icon(Icons.schedule),
                  label: 'Riwayat'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.help_outline),
                  activeIcon: Icon(Icons.help_outline),
                  label: 'Bantuan'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.mail_outline),
                  activeIcon: Icon(Icons.mail_outline),
                  label: 'Inbox'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  activeIcon: Icon(Icons.account_circle),
                  label: 'Akun Saya'),
            ],
            selectedItemColor: Colors.red,
            unselectedItemColor: Color(0xff747D8C),
            currentIndex: index,
            onTap: (i) {
              setState(() {
                index = i;
              });
            },
          ),
        ),
      ),
    );
  }
}
