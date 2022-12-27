import 'package:animated_bottom_nav/screen/navbar_key.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Continue Shopping'),
        onPressed: () {
          CurvedNavigationBarState? navState =
              NavBarkey.getKey().currentState as CurvedNavigationBarState?;
          navState?.setPage(0);
        },
      ),
    );
  }
}
