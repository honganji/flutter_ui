import 'package:ui_app/features/home/components/list_element.dart';

/* 
  page list for the home page
  If you create a new page, add it here and router.dart
 */
final List<ListElement> pageLists = [
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
  ListElement(
    pageName: "Container",
    path: "/container",
  ),
  ListElement(
    pageName: "Grid View",
    path: "/grid_view",
  ),
];
