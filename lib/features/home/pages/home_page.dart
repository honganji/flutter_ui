import 'package:flutter/material.dart';
import 'package:ui_app/features/home/components/my_list_tile.dart';
import 'package:ui_app/features/page_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of pages'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: pageLists.length,
              itemBuilder: (context, index) {
                return MyListTile(listElement: pageLists[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
