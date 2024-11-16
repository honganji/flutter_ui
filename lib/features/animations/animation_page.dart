import 'package:flutter/material.dart';

class AnimationPage extends StatelessWidget {
  final String id;
  final String name;
  const AnimationPage({
    required this.id,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Animation"),
            Text("ID: $id"),
            Text("Name: $name"),
          ],
        ),
      ),
    );
  }
}
