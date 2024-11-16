import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomHomePage extends StatelessWidget {
  final Widget child;
  const BottomHomePage({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Home Page'),
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _getSelectedIndex(context),
        onTap: (index) => _onItemTapped(context, index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'video'),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'camera'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'settings'),
        ],
      ),
    );
  }

  int _getSelectedIndex(BuildContext context) {
    final currentPath = GoRouter.of(context).state!.fullPath;
    if (currentPath == '/page1') return 0;
    if (currentPath == '/page2') return 1;
    if (currentPath == '/page3') return 2;
    return 0;
  }

  void _onItemTapped(BuildContext context, int index) {
    if (index == 0) {
      context.go('/page1');
    } else if (index == 1) {
      context.go('/page2');
    } else if (index == 2) {
      context.go('/page3');
    }
  }
}
