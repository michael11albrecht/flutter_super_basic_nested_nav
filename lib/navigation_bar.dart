import 'package:flutter/material.dart';
import 'play_navigator.dart';

import 'leaderboard_view.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedPage = 0;
  switchPage(int value) {
    if (value != selectedPage) {
      setState(() {
        selectedPage = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (value) => switchPage(value),
          selectedIndex: selectedPage,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.leaderboard),
              label: 'Leaderboard',
            ),
          ],
        ),
        body: selectedPage == 0
            ? PlayNavigator(navKey: navigatorKey)
            : const LeaderboardView());
  }
}
