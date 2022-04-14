import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:squadio/binding/persons_binding.dart';
import 'package:squadio/view/details/details_screen.dart';
import 'package:squadio/view/persons/persons_screen.dart';
import '../view/perview/preview_screen.dart';
import 'routes.dart';

class Pages {
  static final routes = [
    GetPage(
      name: Routes.persons,
      page: () => const PersonsScreen(key: Key(Routes.persons)),
      binding: PersonsBinding(),
    ),
    GetPage(
      name: Routes.details,
      page: () => DetailsScreen(key: const Key(Routes.details)),
    ),
    GetPage(
      name: Routes.preview,
      page: () => PreviewScreen(key: Key(Routes.preview)),
    )
  ];
}
