import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          const Text("List of pages"),
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
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Center(
      //       child: ElevatedButton(
      //         onPressed: () => context.go(
      //           Uri(
      //             path: "/animation/3",
      //             queryParameters: {"name": "John"},
      //           ).toString(),
      //         ),
      //         child: const Text("button page with parameters"),
      //       ),
      //     ),
      //     Center(
      //       child: ElevatedButton(
      //         onPressed: () => context.go("/page1"),
      //         child: const Text("bottom nav bar"),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
