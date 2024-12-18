import 'package:flutter/material.dart';
import '../variables.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
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
              backgroundImage: NetworkImage(uProfilePic),
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              '/assets/icons/home.svg',
              width: 24,
              height: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              '/assets/icons/wallet_card.svg',
              width: 24,
              height: 24,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              '/assets/icons/clock_rotate_left.svg',
              width: 24,
              height: 24,
            ),
            label: 'History',
          ),
        ],
      ),
    );
  }
}
