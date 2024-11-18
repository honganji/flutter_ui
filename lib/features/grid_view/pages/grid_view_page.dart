import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20,
                    mainAxisExtent: 50,
                  ),
                  // scrollDirection: Axis.horizontal,
                  children: List.generate(
                    20,
                    (index) => Container(
                      width: 30,
                      color: Colors.blue[100 * (index % 9)],
                      child: Text("Item $index"),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20,
                    mainAxisExtent: 100,
                  ),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => Container(
                      width: 30,
                      color: Colors.blue[100 * (index % 9)],
                      child: Text("Item $index"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
