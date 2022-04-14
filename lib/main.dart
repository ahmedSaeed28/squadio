import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'binding/initial_binding.dart';
import 'routes/pages.dart';
import 'routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialBinding: InitialBinding(),
      initialRoute: Routes.persons,
      getPages: Pages.routes,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0d253f),
        )
      ),
    );
  }
}
