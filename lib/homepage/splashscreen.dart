import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsivenessinflutter/homepage/bottomnavigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex: 0,
        style: TabStyle.titled,
        backgroundColor: Colors.orange,
        items: [
          TabItem(icon: Icons.arrow_right_alt, title: 'Profile'),
        ],
        onTap: (int i) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const BottomNavigation()));
        },
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              'assets/spoit.png',
              width: 300,
              height: 300,
            ),
            Text(
              'Your Dream Job is Waiting For You',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Discover millions of jobs and get in touch with hiring managers',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
