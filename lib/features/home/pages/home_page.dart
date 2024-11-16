import 'package:flutter/material.dart';
import 'package:ui_app/features/home/components/list_element.dart';
import 'package:ui_app/features/home/components/my_list_tile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<ListElement> listElements = [
    ListElement(
      pageName: "page with parameters",
      path: Uri(
        path: "/animation/3",
        queryParameters: {"name": "John"},
      ).toString(),
    ),
    ListElement(
      pageName: "Bottom Nav Bar",
      path: "/page1",
    ),
  ];

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
              itemCount: listElements.length,
              itemBuilder: (context, index) {
                return MyListTile(listElement: listElements[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
