import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key, required this.child});
  final Widget child;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: SafeArea(
        bottom: false,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          currentIndex: _calculateSelectedIndex(context),
          onTap: (index) {
            _onItemTapped(index, context);
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Trending',
              icon: Icon(Icons.connected_tv),
            ),
            BottomNavigationBarItem(
              label: 'Watchlist',
              icon: Icon(Icons.favorite_border),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        (context).go('/home');
        break;
      case 1:
        context.go('/trending');
        break;
      case 2:
        (context).go('/watch-list');
        break;
      case 3:
        (context).go('/profile');
        break;
    }
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).location;
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/trending')) {
      return 1;
    }
    if (location.startsWith('/watch-list')) {
      return 2;
    }
    if (location.startsWith('/profile')) {
      return 3;
    }
    return 0;
  }
}
