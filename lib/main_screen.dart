import 'package:animated_bottom_nav/screen/account.dart';
import 'package:animated_bottom_nav/screen/cart.dart';
import 'package:animated_bottom_nav/screen/feed.dart';
import 'package:animated_bottom_nav/screen/home.dart';
import 'package:animated_bottom_nav/screen/message.dart';
import 'package:animated_bottom_nav/screen/navbar_key.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  final screen = [
    const HomeScreen(),
    const FeedScreen(),
    const MessageScreen(),
    const CartScreen(),
    const AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: NavBarkey.getKey(),
        index: selectedIndex,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home, size: 30),
          Icon(Icons.rss_feed, size: 30),
          Icon(Icons.messenger, size: 30),
          Icon(Icons.shopping_cart, size: 30),
          Icon(Icons.person, size: 30)
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        animationCurve: Curves.easeInBack,
      ),
      body: screen[selectedIndex],
    );
  }
}
