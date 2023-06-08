import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:roni_site_2_0/pages/about/about_screen.dart';
import 'package:roni_site_2_0/pages/home/home_screen.dart';
import 'package:roni_site_2_0/ui/scaffold.dart';

class RpRoutes {
  RpRoutes._();

  static const String home = '/';
  static const String about = '/about';

  static CustomTransitionPage _customTransitionPage(Widget page) {
    return CustomTransitionPage(
      child: page,
      transitionsBuilder: (_, animation, __, child) {
        return SlideTransition(
          position: animation.drive(
            Tween(
              begin: const Offset(1.5, 0),
              end: Offset.zero,
            ),
          ),
          child: RpScaffold(child: child),
        );
      },
    );
  }

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: home,
        pageBuilder: (_, __) => _customTransitionPage(const HomeScreen()),
      ),
      GoRoute(
        path: about,
        pageBuilder: (_, __) => _customTransitionPage(const AboutScreen()),
      ),
    ],
  );
}
