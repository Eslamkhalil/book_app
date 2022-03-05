import 'package:book_app/layout/bottom_nav/categorise/categorise_screen.dart';
import 'package:book_app/layout/bottom_nav/profile/profile_screen.dart';
import 'package:book_app/modules/favorite_screen/favorites.dart';
import 'package:book_app/modules/profile_screen/profile_screen.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<Widget> screens = [
    const ProfileScreen(),
    CategoriseScreen(),
    const Favorites(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[3]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'favorite_screen'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: 'profile'),
        ],
      ),
    );
  }
}
