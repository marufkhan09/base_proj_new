import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/router/routes.dart';
import 'package:go_router/go_router.dart';

class MyScaffold extends StatefulWidget {
  final Widget child;

  const MyScaffold({super.key, required this.child});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Title'),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.linearToEaseOut,
        animationDuration: const Duration(milliseconds: 1500),
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          switch (index) {
            case 0:
              context.go(Routes.home);
              break;
            case 1:
              context.go(Routes.settings);
              break;
            case 2:
              context.go(Routes.third);
              break;
            case 3:
              context.go(Routes.fourth);
              break;
            default:
              // Handle default case
              break;
          }
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(Icons.apps),
            title: const Text('Home'),
            activeColor: Theme.of(context).colorScheme.primary,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.people),
            title: const Text('Users'),
            activeColor: Theme.of(context).colorScheme.primary,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.message),
            title: const Text(
              'Messages test for mes teset test test ',
            ),
            activeColor: Theme.of(context).colorScheme.primary,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.settings),
            title: const Text('Settings'),
            activeColor: Theme.of(context).colorScheme.primary,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
