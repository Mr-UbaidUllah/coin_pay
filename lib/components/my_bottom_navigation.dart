import 'package:coin_pay/pages/home_page.dart';
import 'package:coin_pay/pages/massage_page.dart';
import 'package:coin_pay/pages/profile_page.dart';
import 'package:flutter/material.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int currentIndex = 0;

  List  pages = [
    HomePage(),
    ProfilePage(),
    MessagePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(

        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                  icon: Icon(Icons.home_outlined)),
              BottomNavigationBarItem(
                  label: "Message",
                  icon: Icon(Icons.messenger_outline)),
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(Icons.person_2_outlined))
            ]),
      ),
      body: pages[currentIndex],
    );
  }
}
