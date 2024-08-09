import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_msib/core/themes/app_theme.dart';
import 'package:suitmedia_msib/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Suitmedia Test App',
      theme: AppTheme.theme,
      getPages: routes,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.screen1,
    );
  }
}
