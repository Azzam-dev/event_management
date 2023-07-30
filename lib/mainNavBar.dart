import 'package:event_management/homePage.dart';
import 'package:event_management/notificationsPage.dart';
import 'package:event_management/profilePage.dart';
import 'package:event_management/scanPage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainNavBar extends StatefulWidget {
  const MainNavBar({
    super.key,
  });

  @override
  State<MainNavBar> createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  int currentIndex = 0;

  void goToPage(index) {
    setState(() {
      currentIndex = index;
    });
  }

  List _pages = [
    HomePage(),
    NotificationsPage(),
    ScanPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            onTabChange: (index) => goToPage(index),
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(icon: Icons.home, text: "Home"),
              GButton(icon: Icons.notifications, text: "Notifi"),
              GButton(icon: Icons.qr_code_scanner, text: "Scan"),
              GButton(icon: Icons.person, text: "Profile")
            ],
          ),
        ),
      ),
    );
  }
}
