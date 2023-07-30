import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainNavBar extends StatelessWidget {
  const MainNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          gap: 8,
          onTabChange: (index) {
            print(index);
          },
          padding: const EdgeInsets.all(16),
          tabs: const [
            GButton(icon: Icons.home, text: "Home"),
            GButton(icon: Icons.notifications, text: "Notifi"),
            GButton(icon: Icons.qr_code_scanner, text: "Scan"),
            GButton(icon: Icons.person, text: "Profile")
          ],
        ),
      ),
    );
  }
}
