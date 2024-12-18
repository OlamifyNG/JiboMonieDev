// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Add this import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../variables.dart'; // Import variables.dart to access uProfilePic

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Track the current selected index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "Welcome, User",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.lightGreen,
              backgroundImage:
                  NetworkImage(uProfilePic), // Accessing the getter
              radius: 20,
            ),
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  debugPrint('Notification Button Pressed');
                },
                icon: const FaIcon(
                  FontAwesomeIcons.bell,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text('Content for Home Screen $_currentIndex'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Set current index
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update selected index
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png', // Use PNG/JPEG image instead of SVG
              width: 24,
              height: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/wallet_card.png',
              width: 24,
              height: 24,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/clock_rotate_left.png',
              width: 24,
              height: 24,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/user.png',
              width: 24,
              height: 24,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
