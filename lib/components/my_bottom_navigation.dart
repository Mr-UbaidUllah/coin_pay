import 'package:coin_pay/pages/home_page.dart';
import 'package:coin_pay/pages/massage_page.dart';
import 'package:coin_pay/pages/profile_page.dart';
import 'package:coin_pay/pages/spending_page.dart';
import 'package:flutter/material.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int myCurrentIndex = 0;

  final List pages = [
    const HomePage(),
    const SpendingPage(),
    const MessagePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: pages[myCurrentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blueAccent,
            backgroundColor: Colors.white,
            currentIndex: myCurrentIndex,
            onTap: (int index) {
              setState(() {
                myCurrentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home_outlined),
              ),
              BottomNavigationBarItem(
                label: "Spending",
                icon: Icon(Icons.money),
              ),
              BottomNavigationBarItem(
                label: "Message",
                icon: Icon(Icons.message_outlined),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person_2_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
