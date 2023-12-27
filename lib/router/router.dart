import 'package:flutter/material.dart';
import 'package:flutter_base_project/router/routes.dart';
import 'package:flutter_base_project/screens/fourthscreen.dart';
import 'package:flutter_base_project/screens/homescreen.dart';
import 'package:flutter_base_project/screens/settingscreen.dart';
import 'package:flutter_base_project/screens/thirdscreen.dart';
import 'package:flutter_base_project/widgets/custom_scaffold.dart';
import 'package:go_router/go_router.dart';

final GoRouter goRouter = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, router, navigator) {
        return MyScaffold(
          child: navigator,
        );
      },
      routes: [
        GoRoute(
          path: Routes.home,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const HomeScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                // Change the opacity of the screen using a Curve based on the the animation's
                // value
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          path: Routes.settings,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const SettingScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                // Change the opacity of the screen using a Curve based on the the animation's
                // value
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          path: Routes.third,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const ThirdScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                // Change the opacity of the screen using a Curve based on the the animation's
                // value
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          path: Routes.fourth,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const FourthScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                // Change the opacity of the screen using a Curve based on the the animation's
                // value
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),
      ],
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: const Scaffold(
      body: Center(
        child: Text('Error: Page not found!'),
      ),
    ),
  ),
);
