import 'package:go_router/go_router.dart';
import 'package:ui_app/features/home/pages/home_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const HomePage(), routes: [
      GoRoute(
        path: "button",
        builder: (context, state) => const HomePage(),
      ),
    ])
  ],
);
