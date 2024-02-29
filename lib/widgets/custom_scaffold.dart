import 'package:flutter/material.dart';
import 'package:flutter_base_project/constants/common_libs.dart';
import 'package:flutter_base_project/router/routes.dart';

class MyScaffold extends StatefulWidget {
  final Widget child;

  const MyScaffold({super.key, required this.child});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int _currentIndex = 0;

  Widget _buildBackButton(BuildContext context) {
    return true
        ? IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // GoRouter.of(context).goBack();
            },
          )
        : const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Title'),
        leading: _buildBackButton(context),
      ),
      body: widget.child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        animationDuration: const Duration(milliseconds: 3000),
        onDestinationSelected: (index) {
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
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Settings',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: 'Third',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Fourth',
          ),
        ],
      ),
    );
  }
}
