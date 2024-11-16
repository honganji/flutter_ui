import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_app/features/animations/animation_page.dart';
import 'package:ui_app/features/bottom_home/components/page1.dart';
import 'package:ui_app/features/bottom_home/components/page2.dart';
import 'package:ui_app/features/bottom_home/components/page3.dart';
import 'package:ui_app/features/bottom_home/pages/bottom_home_page.dart';
import 'package:ui_app/features/button/pages/button_page.dart';
import 'package:ui_app/features/home/pages/home_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => HomePage(),
      routes: [
        GoRoute(
          path: "button",
          builder: (context, state) => const ButtonPage(),
        ),
        GoRoute(
          path: "animation/:id",
          pageBuilder: (context, state) => CustomTransitionPage(
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: AnimationPage(
              id: state.pathParameters['id'] ?? "0",
              name: state.uri.queryParameters["name"] ?? 'unknown',
            ),
          ),
        ),
        ShellRoute(
          builder: (context, state, child) {
            return BottomHomePage(child: child);
          },
          routes: [
            GoRoute(
              path: "page1",
              pageBuilder: (context, state) => CustomTransitionPage(
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  child: const Page1()),
            ),
            GoRoute(
              path: "page2",
              builder: (context, state) => const Page2(),
            ),
            GoRoute(
              path: "page3",
              builder: (context, state) => const Page3(),
            ),
          ],
        ),
      ],
    ),
  ],
);
