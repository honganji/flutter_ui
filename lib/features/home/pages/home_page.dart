import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => context.go(
                Uri(
                  path: "/animation/3",
                  queryParameters: {"name": "John"},
                ).toString(),
              ),
              child: const Text("button page with parameters"),
            ),
            ElevatedButton(
              onPressed: () => context.go("/page1"),
              child: const Text("bottom nav bar"),
            ),
          ],
        ),
      ),
    );
  }
}
