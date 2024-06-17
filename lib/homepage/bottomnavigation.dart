import 'package:flutter/material.dart';
import 'package:responsivenessinflutter/homepage/homescreen.dart';
import 'package:responsivenessinflutter/homepage/profilescreen.dart';
import 'package:responsivenessinflutter/homepage/settingsscreen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('My App'),
      // ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, // <-- HERE
        showUnselectedLabels: false, // <-- AND HERE
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/home.png",
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 39,
              height: 39,
              decoration: BoxDecoration(
                color: Colors.orange, // Set the background color
                borderRadius: BorderRadius.circular(50.0), // Make it circular
              ),
              child: const Center(
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
