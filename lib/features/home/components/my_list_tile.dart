import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_app/features/home/components/list_element.dart';

class MyListTile extends StatelessWidget {
  final ListElement listElement;
  const MyListTile({
    required this.listElement,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Text(
            listElement.pageName,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onTap: () => context.go(listElement.path),
    );
  }
}
